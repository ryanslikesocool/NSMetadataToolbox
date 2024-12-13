import Combine
import Foundation

extension NSMetadataQuery {
	nonisolated static var didUpdateNotificationName: Notification.Name { .NSMetadataQueryDidUpdate }
	nonisolated static var gatheringProgressNotificationName: Notification.Name { .NSMetadataQueryGatheringProgress }
	nonisolated static var didStartGatheringNotificationName: Notification.Name { .NSMetadataQueryDidStartGathering }
	nonisolated static var didFinishGatheringNotificationName: Notification.Name { .NSMetadataQueryDidFinishGathering }
}

public extension NSMetadataQuery {
//	func finish(
//		isolation: isolated (any Actor)? = #isolation,
//		queue: OperationQueue? = nil,
//		notificationCenter: NotificationCenter = .default
//	) async throws {
//		try await NSMetadataQueryStateContainer
//			.finish(query: self, queue: queue, notificationCenter: notificationCenter)
//	}

//	func finishMK2(
//		isolation: isolated (any Actor)? = #isolation,
//		queue: OperationQueue? = nil,
//		notificationCenter: NotificationCenter = .default
//	) async throws {
//		let notificationName = NSMetadataQuery.didFinishGatheringNotificationName
//
//		await withCheckedContinuation { (continuation: CheckedContinuation<Void, Never>) in
//			let observer = notificationCenter.addObserver(
//				forName: notificationName,
//				object: self,
//				queue: queue,
//				using: receive(notification:)
//			)
//
	////			@Sendable
//			func receive(
//				notification: Notification
//			) {
//				notificationCenter.removeObserver(observer, name: notificationName, object: notification.object)
//				continuation.resume()
//			}
//		}
//	}

	// MK3
	func finish(
		isolation: isolated (any Actor)? = #isolation,
		queue: OperationQueue? = nil,
		notificationCenter: NotificationCenter = .default
	) async {
		let notificationName = NSMetadataQuery.didFinishGatheringNotificationName

		await withCheckedContinuation { (continuation: CheckedContinuation<Void, Never>) in
			var subscriber: AnyCancellable? = nil
			subscriber = notificationCenter
				.publisher(for: notificationName, object: self)
				.sink(receiveValue: sink(notification:))

			guard start() else {
				subscriber?.cancel()
				continuation.resume()
				return
			}

			func sink(notification: Notification) {
				subscriber?.cancel()
				stop()
				continuation.resume()
			}
		}
	}

//	@available(macOS 12, iOS 15, tvOS 15, watchOS 8, *)
//	func finishMK4(
//		isolation: isolated (any Actor)? = #isolation,
//		queue: OperationQueue? = nil,
//		notificationCenter: NotificationCenter = .default
//	) async throws {
//		let notificationName = NSMetadataQuery.didFinishGatheringNotificationName
//		let notifications = notificationCenter
//			.notifications(named: notificationName, object: self)
//			.map { _ in }
//
//		for await notification in notifications {
//
//		}
//	}
}
