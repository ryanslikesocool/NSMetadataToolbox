import struct Foundation.Notification

@available(iOS 5, macCatalyst 13.1, macOS 10.4, tvOS 9, visionOS 1, watchOS 2, *)
public extension Notification.Name {
	/// The namespace for `NSMetadataQuery` notification names.
	static var nsMetadataQuery: NSMetadataQuery.Type { NSMetadataQuery.self }

	/// The namespace for `NSMetadataQuery` notification names.
	///
	/// ## Topics
	/// - ``nsMetadataQuery``
	@frozen
	enum NSMetadataQuery {
		/// The name of the notification that is posted when the receiver begins with the initial result-gathering phase of the query.
		///
		/// This is equivalent to the
		/// [`NSMetadataQueryDidStartGathering`]( https://developer.apple.com/documentation/foundation/nsnotification/name/1416717-nsmetadataquerydidstartgathering )
		/// notification name.
		public static var didStartGathering: Notification.Name {
			Notification.Name.NSMetadataQueryDidStartGathering
		}

		/// The name of the notification that is posted when the receiver has finished with the initial result-gathering phase of the query.
		///
		/// This is equivalent to the
		/// [`NSMetadataQueryDidFinishGathering`]( https://developer.apple.com/documentation/foundation/nsnotification/name/1414740-nsmetadataquerydidfinishgatherin )
		/// notification name.
		public static var didFinishGathering: Notification.Name {
			Notification.Name.NSMetadataQueryDidFinishGathering
		}

		/// The name of the notification that is posted as the receiver is collecting results during the initial result-gathering phase of the query.
		///
		/// This is equivalent to the
		/// [`NSMetadataQueryGatheringProgress`]( https://developer.apple.com/documentation/foundation/nsnotification/name/1408041-nsmetadataquerygatheringprogress )
		/// notification name.
		public static var gatheringProgress: Notification.Name {
			Notification.Name.NSMetadataQueryGatheringProgress
		}

		/// The name of the notification that is posted when the receiver’s results have changed during the live-update phase of the query.
		///
		/// This is equivalent to the
		/// [`NSMetadataQueryDidUpdate`]( https://developer.apple.com/documentation/foundation/nsnotification/name/1413406-nsmetadataquerydidupdate )
		/// notification name.
		public static var didUpdate: Notification.Name {
			Notification.Name.NSMetadataQueryDidUpdate
		}

		/// Determine if this namespace contains the given `notificationName`.
		///
		/// - Parameter notificationName:
		/// - Returns: `true` if the namespace contains the given `notificationName`; `false` otherwise.
		public static func contains(
			_ notificationName: Notification.Name
		) -> Bool {
			// TODO: Optimize
			// - Is the Swift compiler already smart enough to optimize this away?
			// - Is this function even necessary?
			// - Should we store this as a `static let allCases: [Notification.Name]`?
			// - Should we implement this using `NSMetadataQueryEvent`?

//			NSMetadataQueryEvent(notificationName) != nil

			notificationName == didStartGathering
				|| notificationName == didFinishGathering
				|| notificationName == gatheringProgress
				|| notificationName == didUpdate
		}
	}
}
