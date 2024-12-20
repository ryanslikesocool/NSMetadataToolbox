import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`NSMetadataItemDateAddedKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemdateaddedkey)\.
	struct DateAddedKey: NSMetadataItemAttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemDateAddedKey }

		public init() { }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/DateAddedKey``.
	var dateAdded: DateAddedKey.Type {
		DateAddedKey.self
	}
}

@available(macOS 10.9, *)
public extension NSMetadataItemAttributeProtocol where
	Self == NSMetadataItemAttribute.DateAddedKey
{
	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/DateAddedKey``.
	static var dateAdded: Self {
		Self()
	}
}
