import struct Foundation.Date
private import let Foundation.NSMetadataAttributes.NSMetadataItemLastUsedDateKey

@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemLastUsedDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemlastuseddatekey)\.
	enum LastUsedDateKey: NSMetadataAttributeKeyProtocol {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemLastUsedDateKey }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKey<NSMetadataAttribute.LastUsedDateKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/LastUsedDateKey``.
	static var lastUsedDate: Self {
		Self()
	}
}
