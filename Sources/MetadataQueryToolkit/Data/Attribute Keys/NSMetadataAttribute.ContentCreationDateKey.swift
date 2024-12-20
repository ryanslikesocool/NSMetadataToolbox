import struct Foundation.Date
private import let Foundation.NSMetadataAttributes.NSMetadataItemContentCreationDateKey

@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemContentCreationDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemcontentcreationdatekey)\.
	enum ContentCreationDateKey: NSMetadataAttributeKeyProtocol {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemContentCreationDateKey }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKey<NSMetadataAttribute.ContentCreationDateKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/ContentCreationDateKey``.
	static var contentCreationDate: Self {
		Self()
	}
}
