import let Foundation.NSMetadataAttributes.NSMetadataItemLastUsedDateKey
import struct Foundation.Date

@available(macOS 10.9, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`NSMetadataItemLastUsedDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemlastuseddatekey)\.
	///
	/// ## See Also
	/// - ``NSMetadataAttributeObject/lastUsedDate``
	struct LastUsedDate: NSMetadataAttributeKey {
		public typealias Output = Date

		public static var attributeKey: String { NSMetadataItemLastUsedDateKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.LastUsedDate
{
	/// The attribute key for
	/// [`NSMetadataItemLastUsedDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemlastuseddatekey)\.
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/LastUsedDate``
	static var lastUsedDate: Self {
		Self()
	}
}
