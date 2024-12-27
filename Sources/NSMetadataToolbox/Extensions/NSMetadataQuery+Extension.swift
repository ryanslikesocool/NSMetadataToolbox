import Combine
import Foundation

@available(iOS 13, macCatalyst 13.1, macOS 10.15, tvOS 13, visionOS 1, watchOS 6, *)
public extension NSMetadataQuery {
	/// Asynchronously start the query and wait for results.
	///
	/// - Parameters:
	///   - isolation: The actor isolation for the query.
	///   The current
	///   [`#isolation`](https://developer.apple.com/documentation/swift/isolation())
	///   is used by default.
	///   - notificationCenter: The notification center used to wait for the
	///   [`.NSMetadataQueryDidFinishGathering`](https://developer.apple.com/documentation/foundation/nsnotification/name/1414740-nsmetadataquerydidfinishgathering)
	///   notification.
	func gatherResults(
		isolation: isolated (any Actor)? = #isolation,
		notificationCenter: NotificationCenter = .default
	) async {
		let notificationName: Notification.Name = .NSMetadataQueryDidFinishGathering

		await withCheckedContinuation { continuation in
			var subscriber: AnyCancellable?
			subscriber = notificationCenter
				.publisher(for: notificationName, object: self)
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
}
