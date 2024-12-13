import Combine
import Foundation

// TODO: Would this be better represented as an `actor`?

final class NSMetadataQueryStateContainer {
	private var state: State

	init() {
		state = .inactive
	}

	deinit {
		stop()
	}
}

// MARK: - Sendable

// VALIDATE: Is it safe to mark as `@unchecked Sendable`?
// It probably *should* be safe, but it feels icky.
extension NSMetadataQueryStateContainer: @unchecked Sendable { }

// MARK: - SupportingData

private extension NSMetadataQueryStateContainer {
	enum State {
		case inactive
		case active(query: NSMetadataQuery, observer: any NSObjectProtocol, notificationName: Notification.Name, notificationCenter: NotificationCenter, completionHandler: () -> Void)

		func stop() {
			guard case let .active(query, observer, notificationName, notificationCenter, _) = self else {
				return
			}

			query.stop()
			notificationCenter.removeObserver(observer, name: notificationName, object: query)
		}
	}
}

// MARK: -

private extension NSMetadataQueryStateContainer {
	func start(
		query: NSMetadataQuery,
		queue: OperationQueue?,
		notificationName: Notification.Name,
		notificationCenter: NotificationCenter,
		completionHandler: @escaping () -> Void
	) throws {
		guard case .inactive = self.state else {
			preconditionFailure("\(#function) should not be called while the \(Self.self) is running.")
		}

		// Register the observer before starting the query
		// so we don't miss any notifications.
		let observer: any NSObjectProtocol = notificationCenter.addObserver(
			forName: notificationName,
			object: query,
			queue: queue,
			using: finished
		)

		let state: State = .active(
			query: query,
			observer: observer,
			notificationName: notificationName,
			notificationCenter: notificationCenter,
			completionHandler: completionHandler
		)

		guard query.start() else {
			state.stop()
			throw AsyncNSMetadataQueryFailure.queryStartFailure
		}

		self.state = state
	}

	private func finished(notification: Notification) {
		/// # validate current state
		guard case let .active(query, _, _, _, completionHandler) = state else {
			preconditionFailure("\(#function) should not be called while the \(Self.self) is not running.")
		}

		// TODO: Do we even need to validate the notification object?
		guard
			let notificationObject = notification.object as? NSMetadataQuery,
			notificationObject === query
		else {
			preconditionFailure("Received \(notification.name) from an invalid object.")
		}

		completionHandler()
		stop()
	}

	consuming func stop() {
		state.stop()
	}
}

// MARK: - Async

extension NSMetadataQueryStateContainer {
	private consuming func finish(
		isolation: isolated (any Actor)? = #isolation,
		query: NSMetadataQuery,
		queue: OperationQueue?,
		notificationCenter: NotificationCenter
	) async throws {
		// TODO: revisit `withTaskCancellationHandler`.
		// I tried it out before, but it never seemed to allow the primary operation to complete.
		// Maybe some isolation issue with `NSMetadataQuery`?

		try await withCheckedThrowingContinuation { continuation in
			do {
				try start(
					query: query,
					queue: queue,
					notificationName: NSMetadataQuery.didFinishGatheringNotificationName,
					notificationCenter: notificationCenter
				) {
					do {
						try Task.checkCancellation()

						continuation.resume()
					} catch {
						continuation.resume(throwing: error)
					}
				}

				try Task.checkCancellation()
			} catch {
				continuation.resume(throwing: error)
			}
		}
	}

	static func finish(
		isolation: isolated (any Actor)? = #isolation,
		query: NSMetadataQuery,
		queue: OperationQueue?,
		notificationCenter: NotificationCenter
	) async throws {
		try await NSMetadataQueryStateContainer()
			.finish(query: query, queue: queue, notificationCenter: notificationCenter)
	}
}
