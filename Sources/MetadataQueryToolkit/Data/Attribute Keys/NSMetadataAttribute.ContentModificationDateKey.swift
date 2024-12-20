import struct Foundation.Date
private import let Foundation.NSMetadataAttributes.NSMetadataItemContentModificationDateKey

@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemContentModificationDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemcontentmodificationdatekey)\.
	enum ContentModificationDateKey: NSMetadataAttributeKeyProtocol {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemContentModificationDateKey }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKey<NSMetadataAttribute.ContentModificationDateKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/ContentModificationDateKey``.
	static var contentModificationDate: Self {
		Self()
	}
}
