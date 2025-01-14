@preconcurrency import Combine
import Foundation

@available(iOS 13, macCatalyst 13.1, macOS 10.15, tvOS 13, visionOS 1, watchOS 6, *)
public extension NSMetadataQuery {
	/// Asynchronously start the query and wait for results.
	///
	/// - Parameters:
	///   - isolation: The actor isolation for the query.
	///   The current
	///   [`#isolation`]( https://developer.apple.com/documentation/swift/isolation() )
	///   is used by default.
	///   - notificationCenter: The notification center used to wait for the
	///   [`NSMetadataQueryDidFinishGathering`]( https://developer.apple.com/documentation/foundation/nsnotification/name/1414740-nsmetadataquerydidfinishgathering )
	///   notification.
	///   The
	///   [`default`]( https://developer.apple.com/documentation/foundation/notificationcenter/1414169-default )
	///   notification center is used by default.
	func gatherResults(
		isolation: isolated (any Actor)? = #isolation,
		notificationCenter: NotificationCenter = NotificationCenter.default
	) async {
		await withCheckedContinuation { continuation in
			var subscriber: AnyCancellable?
			subscriber = notificationCenter
				.publisher(for: Notification.Name.NSMetadataQueryDidFinishGathering, object: self)
				.sink(receiveValue: sink(notification:))

			// Subscribe to notifications before starting the query.
			// Don't want to miss anything!

			guard start() else {
				// Perform cleanup if the query failed to start.
				subscriber?.cancel()
				continuation.resume()
				return
			}

			func sink(notification: Notification) {
				// Perform cleanup upon receiving the notification.
				subscriber?.cancel()
				stop()
				continuation.resume()
			}
		}
	}

	/// - Parameters:
	///   - isolation: The actor isolation for the query.
	///   The current
	///   [`#isolation`]( https://developer.apple.com/documentation/swift/isolation() )
	///   is used by default.
	///   - notificationCenter: The notification center used to wait for events.
	///   The
	///   [`default`]( https://developer.apple.com/documentation/foundation/notificationcenter/1414169-default )
	///   notification center is used by default.
	func eventStream(
		isolation: isolated (any Actor)? = #isolation,
		notificationCenter: NotificationCenter = NotificationCenter.default
	) -> AsyncStream<NSMetadataQuery.Event> {
		return AsyncStream { continuation in
			let subscriber: AnyCancellable = Publishers.MergeMany(createNotificationPublishers())
				.compactMap(compactMapNotification(_:))
				.sink(receiveValue: sink(event:))

			continuation.onTermination = terminate(_:)

			func sink(event: NSMetadataQuery.Event) {
				continuation.yield(event)
			}

			@Sendable
			func terminate(_ termination: AsyncStream<NSMetadataQuery.Event>.Continuation.Termination) {
				subscriber.cancel()
			}
		}

		func createNotificationPublishers() -> [NotificationCenter.Publisher] {
			NSMetadataQuery.Event.allCases
				.map { (event: NSMetadataQuery.Event) -> NotificationCenter.Publisher in
					notificationCenter.publisher(for: event.notificationName, object: self)
				}
		}

		func compactMapNotification(_ notification: Notification) -> NSMetadataQuery.Event? {
			NSMetadataQuery.Event(notification.name)
		}
	}
}
