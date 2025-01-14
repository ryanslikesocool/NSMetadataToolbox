import struct Foundation.Notification
import class Foundation.NSMetadataQuery

public extension NSMetadataQuery {
	/// Metadata query events returned by ``NSMetadataQuery/eventStream(isolation:notificationCenter:)``.
	///
	/// Each event is associated with an `NSMetadataQuery` notification.
	/// | `NSMetadataQuery.Event` | `Notification.Name` |
	/// | - | - |
	/// | ``didStartGathering`` | [`NSMetadataQueryDidStartGathering`]( https://developer.apple.com/documentation/foundation/nsnotification/name/1416717-nsmetadataquerydidstartgathering ) |
	/// | ``didFinishGathering`` | [`NSMetadataQueryDidFinishGathering`]( https://developer.apple.com/documentation/foundation/nsnotification/name/1414740-nsmetadataquerydidfinishgatherin ) |
	/// | ``gatheringProgress`` | [`NSMetadataQueryGatheringProgress`]( https://developer.apple.com/documentation/foundation/nsnotification/name/1408041-nsmetadataquerygatheringprogress ) |
	/// | ``didUpdate`` | [`NSMetadataQueryDidUpdate`]( https://developer.apple.com/documentation/foundation/nsnotification/name/1413406-nsmetadataquerydidupdate ). |
	enum Event {
		/// The event associated with
		/// [`NSMetadataQueryDidStartGathering`]( https://developer.apple.com/documentation/foundation/nsnotification/name/1416717-nsmetadataquerydidstartgathering ).
		case didStartGathering

		/// The event associated with
		/// [`NSMetadataQueryDidFinishGathering`]( https://developer.apple.com/documentation/foundation/nsnotification/name/1414740-nsmetadataquerydidfinishgatherin ).
		case didFinishGathering

		/// The event associated with
		/// [`NSMetadataQueryGatheringProgress`]( https://developer.apple.com/documentation/foundation/nsnotification/name/1408041-nsmetadataquerygatheringprogress ).
		case gatheringProgress

		/// The event associated with
		/// [`NSMetadataQueryDidUpdate`]( https://developer.apple.com/documentation/foundation/nsnotification/name/1413406-nsmetadataquerydidupdate ).
		case didUpdate
	}
}

// MARK: - Sendable

extension NSMetadataQuery.Event: Sendable { }

// MARK: - Equatable

extension NSMetadataQuery.Event: Equatable { }

// MARK: - Hashable

extension NSMetadataQuery.Event: Hashable { }

// MARK: - CaseIterable

extension NSMetadataQuery.Event: CaseIterable { }

// MARK: - Convenience

extension NSMetadataQuery.Event {
	/// - Parameter notificationName:
	init?(_ notificationName: Notification.Name) {
		// TODO: Optimize
		// - Is the Swift compiler already smart enough to optimize this away?
		// - Should we store this as a `static let notificationNameInitializerLookupTable: [Notification.Name : Self]`?
		// - Should `switch` cases be `case Self.<case>.notificationName:` for safety?
		// - Should we implement this using `Self.allCases`?
		//		```swift
		//		guard let event = Self.allCases.first(where: { (element: Self) -> Bool in
		//			element.notificationName == notificationName
		//		}) else {
		//			return nil
		//		}
		//		self = event
		//		```

		switch notificationName {
			case Notification.Name.NSMetadataQueryDidStartGathering: self = Self.didStartGathering
			case Notification.Name.NSMetadataQueryDidFinishGathering: self = Self.didFinishGathering
			case Notification.Name.NSMetadataQueryGatheringProgress: self = Self.gatheringProgress
			case Notification.Name.NSMetadataQueryDidUpdate: self = Self.didUpdate
			default: return nil
		}
	}
}

// MARK: -

extension NSMetadataQuery.Event {
	/// The notification name that the event is associated with.
	var notificationName: Notification.Name {
		// TODO: Optimize
		// - Is the Swift compiler already smart enough to optimize this away?
		// - Should we store this as a `static let notificationNameLookupTable: [Self : Notification.Name]`?

		switch self {
			case Self.didStartGathering: Notification.Name.NSMetadataQueryDidStartGathering
			case Self.didFinishGathering: Notification.Name.NSMetadataQueryDidFinishGathering
			case Self.gatheringProgress: Notification.Name.NSMetadataQueryGatheringProgress
			case Self.didUpdate: Notification.Name.NSMetadataQueryDidUpdate
		}
	}
}
