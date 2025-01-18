import let CoreServices.Metadata.MDItem.kMDItemLastUsedDate
import struct Foundation.Date

@available(macOS 10.4, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`kMDItemLastUsedDate`]( https://developer.apple.com/documentation/coreservices/kmditemlastuseddate ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/lastUsedDate``
	struct LastUsedDate: NSMetadataAttributeKey {
		public typealias Output = Date

		public static var attributeKey: String {
			kMDItemLastUsedDate as String
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.LastUsedDate
{
	/// The attribute key for
	/// [`kMDItemLastUsedDate`]( https://developer.apple.com/documentation/coreservices/kmditemlastuseddate ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/LastUsedDate``
	static var lastUsedDate: Self {
		Self()
	}
}
