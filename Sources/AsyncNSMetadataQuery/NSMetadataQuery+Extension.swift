import Combine
import Foundation

public extension NSMetadataQuery {
	/// Asynchronously start the query and wait for results.
	/// - Parameters:
	///   - notificationCenter: The notification center used to wait for the ``NSMetadataQuery/didFinishGathering`` notification.
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

			// Subscribe to notifications before starting.
			// Don't want to miss anything!

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
}
