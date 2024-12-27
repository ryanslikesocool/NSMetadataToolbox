import let Foundation.NSMetadataAttributes.NSMetadataItemLastUsedDateKey
import struct Foundation.Date

@available(macOS 10.9, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`NSMetadataItemLastUsedDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemlastuseddatekey)\.
	struct LastUsedDate: NSMetadataAttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemLastUsedDateKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.LastUsedDate
{
	/// The shorthand attribute key accessor for ``NSMetadataAttributeKeys/LastUsedDate``.
	static var lastUsedDate: Self {
		Self()
	}
}
