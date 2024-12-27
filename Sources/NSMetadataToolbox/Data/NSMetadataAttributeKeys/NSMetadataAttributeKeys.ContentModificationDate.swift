import let Foundation.NSMetadataAttributes.NSMetadataItemContentModificationDateKey
import struct Foundation.Date

@available(macOS 10.9, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`NSMetadataItemContentModificationDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemcontentmodificationdatekey)\.
	struct ContentModificationDate: NSMetadataAttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemContentModificationDateKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKeys.ContentModificationDate
{
	/// The shorthand attribute key accessor for ``NSMetadataAttributeKeys/ContentModificationDate``.
	static var contentModificationDate: Self {
		Self()
	}
}
