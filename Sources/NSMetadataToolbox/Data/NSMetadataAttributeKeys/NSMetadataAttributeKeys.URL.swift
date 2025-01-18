import let CoreServices.Metadata.MDItem.kMDItemURL
import struct Foundation.URL

@available(macOS 10.5, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`kMDItemURL`]( https://developer.apple.com/documentation/coreservices/kmditemurl ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/url``
	struct URL: NSMetadataAttributeKey {
		public typealias Output = Foundation.URL

		public static var attributeKey: String {
			kMDItemURL as String
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.5, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.URL
{
	/// The attribute key for
	/// [`kMDItemURL`]( https://developer.apple.com/documentation/coreservices/kmditemurl ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/URL``
	static var url: Self {
		Self()
	}
}
