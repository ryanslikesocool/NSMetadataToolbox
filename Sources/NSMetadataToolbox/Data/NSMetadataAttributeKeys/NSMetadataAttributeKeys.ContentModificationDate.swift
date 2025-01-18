import let CoreServices.Metadata.MDItem.kMDItemContentModificationDate
import struct Foundation.Date

@available(macOS 10.4, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`kMDItemContentModificationDate`]( https://developer.apple.com/documentation/coreservices/kmditemcontentmodificationdate ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/contentModificationDate``
	struct ContentModificationDate: NSMetadataAttributeKey {
		public typealias Output = Date

		public static var attributeKey: String {
			kMDItemContentModificationDate as String
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.ContentModificationDate
{
	/// The attribute key for
	/// [`kMDItemContentModificationDate`]( https://developer.apple.com/documentation/coreservices/kmditemcontentmodificationdate ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/ContentModificationDate``
	static var contentModificationDate: Self {
		Self()
	}
}
