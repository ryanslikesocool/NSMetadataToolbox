import let CoreServices.Metadata.MDItem.kMDItemContentCreationDate
import struct Foundation.Date

@available(macOS 10.4, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`kMDItemContentCreationDate`]( https://developer.apple.com/documentation/coreservices/kmditemcontentcreationdate ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/contentCreationDate``
	struct ContentCreationDate: NSMetadataAttributeKey {
		public typealias Output = Date

		public static var attributeKey: String {
			kMDItemContentCreationDate as String
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.ContentCreationDate
{
	/// The attribute key for
	/// [`kMDItemContentCreationDate`]( https://developer.apple.com/documentation/coreservices/kmditemcontentcreationdate ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/ContentCreationDate``
	static var contentCreationDate: Self {
		Self()
	}
}
