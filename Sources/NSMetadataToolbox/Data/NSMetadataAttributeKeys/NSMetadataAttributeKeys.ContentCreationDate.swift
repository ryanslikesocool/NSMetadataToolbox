import let Foundation.NSMetadataAttributes.NSMetadataItemContentCreationDateKey
import struct Foundation.Date

@available(macOS 10.9, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`NSMetadataItemContentCreationDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemcontentcreationdatekey)\.
	struct ContentCreationDate: NSMetadataAttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemContentCreationDateKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.ContentCreationDate
{
	/// The shorthand attribute key accessor for ``NSMetadataAttributeKeys/ContentCreationDate``.
	static var contentCreationDate: Self {
		Self()
	}
}
