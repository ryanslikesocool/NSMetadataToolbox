private import let Foundation.NSMetadataAttributes.NSMetadataItemContentCreationDateKey
import struct Foundation.Date

@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemContentCreationDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemcontentcreationdatekey)\.
	struct ContentCreationDateKey: NSMetadataAttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemContentCreationDateKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttribute.ContentCreationDateKey
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/ContentCreationDateKey``.
	static var contentCreationDate: Self {
		Self()
	}
}
