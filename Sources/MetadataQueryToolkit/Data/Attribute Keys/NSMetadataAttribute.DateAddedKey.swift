import struct Foundation.Date
private import let Foundation.NSMetadataAttributes.NSMetadataItemDateAddedKey

@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemDateAddedKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemdateaddedkey)\.
	enum DateAddedKey: NSMetadataAttributeKeyProtocol {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemDateAddedKey }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKey<NSMetadataAttribute.DateAddedKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/DateAddedKey``.
	static var dateAdded: Self {
		Self()
	}
}
