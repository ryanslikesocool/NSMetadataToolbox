import Combine
import Foundation

@available(iOS 5, macCatalyst 13.1, macOS 10.4, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataQuery {
	/// The name of the notification that is posted when the receiver begins with the initial result-gathering phase of the query.
	///
	/// This is equivalent to the
	/// [`NSMetadataQueryDidStartGathering`](https://developer.apple.com/documentation/foundation/nsnotification/name/1416717-nsmetadataquerydidstartgathering)
	/// notification name.
	nonisolated static var didStartGathering: Notification.Name { .NSMetadataQueryDidStartGathering }

	/// The name of the notification that is posted when the receiver has finished with the initial result-gathering phase of the query.
	///
	/// This is equivalent to the
	/// [`NSMetadataQueryDidFinishGathering`](https://developer.apple.com/documentation/foundation/nsnotification/name/1414740-nsmetadataquerydidfinishgatherin)
	/// notification name.
	nonisolated static var didFinishGathering: Notification.Name { .NSMetadataQueryDidFinishGathering }

	/// The name of the notification that is posted as the receiver is collecting results during the initial result-gathering phase of the query.
	///
	/// This is equivalent to the
	/// [`NSMetadataQueryGatheringProgress`](https://developer.apple.com/documentation/foundation/nsnotification/name/1408041-nsmetadataquerygatheringprogress)
	/// notification name.
	nonisolated static var gatheringProgress: Notification.Name { .NSMetadataQueryGatheringProgress }

	/// The name of the notification that is posted when the receiver’s results have changed during the live-update phase of the query.
	///
	/// This is equivalent to the
	/// [`NSMetadataQueryDidUpdate`](https://developer.apple.com/documentation/foundation/nsnotification/name/1413406-nsmetadataquerydidupdate)
	/// notification name.
	nonisolated static var didUpdate: Notification.Name { .NSMetadataQueryDidUpdate }
}

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
		await withCheckedContinuation { continuation in
			var subscriber: AnyCancellable?
			subscriber = notificationCenter
				.publisher(for: Self.didFinishGathering, object: self)
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
