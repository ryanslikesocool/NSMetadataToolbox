private import let Foundation.NSMetadataAttributes.NSMetadataItemLastUsedDateKey
import struct Foundation.Date

@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemLastUsedDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemlastuseddatekey)\.
	struct LastUsedDateKey: NSMetadataAttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemLastUsedDateKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttribute.LastUsedDateKey
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/LastUsedDateKey``.
	static var lastUsedDate: Self {
		Self()
	}
}
