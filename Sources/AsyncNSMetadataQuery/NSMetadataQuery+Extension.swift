import Combine
import Foundation

extension NSMetadataQuery {
	nonisolated static var didUpdateNotificationName: Notification.Name { .NSMetadataQueryDidUpdate }
	nonisolated static var gatheringProgressNotificationName: Notification.Name { .NSMetadataQueryGatheringProgress }
	nonisolated static var didStartGatheringNotificationName: Notification.Name { .NSMetadataQueryDidStartGathering }
	nonisolated static var didFinishGatheringNotificationName: Notification.Name { .NSMetadataQueryDidFinishGathering }
}

public extension NSMetadataQuery {
	func finish(
		isolation: isolated (any Actor)? = #isolation,
		queue: OperationQueue? = nil,
		notificationCenter: NotificationCenter = .default
	) async throws {
		try await NSMetadataQueryStateContainer
			.finish(query: self, queue: queue, notificationCenter: notificationCenter)
	}
}
