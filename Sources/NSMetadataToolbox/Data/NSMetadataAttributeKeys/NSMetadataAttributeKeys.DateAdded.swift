import let Foundation.NSMetadataAttributes.NSMetadataItemDateAddedKey
import struct Foundation.Date

@available(macOS 10.9, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`NSMetadataItemDateAddedKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemdateaddedkey)\.
	struct DateAdded: NSMetadataAttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemDateAddedKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKeys.DateAdded
{
	/// The shorthand attribute key accessor for ``NSMetadataAttributeKeys/DateAdded``.
	static var dateAdded: Self {
		Self()
	}
}
