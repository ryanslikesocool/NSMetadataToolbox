import Combine
import Foundation

public extension NSMetadataQuery {
	/// Posted when the receiver’s results have changed during the live-update phase of the query.
	nonisolated static var didUpdate: Notification.Name { .NSMetadataQueryDidUpdate }

	/// Posted as the receiver is collecting results during the initial result-gathering phase of the query.
	nonisolated static var gatheringProgress: Notification.Name { .NSMetadataQueryGatheringProgress }

	/// Posted when the receiver begins with the initial result-gathering phase of the query.
	nonisolated static var didStartGathering: Notification.Name { .NSMetadataQueryDidStartGathering }

	/// Posted when the receiver has finished with the initial result-gathering phase of the query.
	nonisolated static var didFinishGathering: Notification.Name { .NSMetadataQueryDidFinishGathering }
}

public extension NSMetadataQuery {
	/// Asynchronously start the query and wait for results.
	/// - Parameters:
	///   - notificationCenter: The notification center used to wait for the ``NSMetadataQuery/didFinishGathering`` notification.
	func gatherResults(
		isolation: isolated (any Actor)? = #isolation,
		notificationCenter: NotificationCenter = .default
	) async {
		let notificationName = NSMetadataQuery.didFinishGathering

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
