import struct Foundation.Date
private import let Foundation.NSMetadataAttributes.NSMetadataItemContentModificationDateKey

@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemContentModificationDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemcontentmodificationdatekey)\.
	struct ContentModificationDateKey: NSMetadataAttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemContentModificationDateKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttribute.ContentModificationDateKey
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/ContentModificationDateKey``.
	static var contentModificationDate: Self {
		Self()
	}
}
