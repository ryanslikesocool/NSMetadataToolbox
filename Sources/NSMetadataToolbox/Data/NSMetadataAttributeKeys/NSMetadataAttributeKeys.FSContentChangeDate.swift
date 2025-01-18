import let CoreServices.Metadata.MDItem.kMDItemFSContentChangeDate
import struct Foundation.Date

@available(macOS 10.4, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`kMDItemFSContentChangeDate`]( https://developer.apple.com/documentation/coreservices/kmditemfscontentchangedate ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/fsContentChangeDate``
	struct FSContentChangeDate: NSMetadataAttributeKey {
		public typealias Output = Date

		public static var attributeKey: String {
			kMDItemFSContentChangeDate as String
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.FSContentChangeDate
{
	/// The attribute key for
	/// [`kMDItemFSContentChangeDate`]( https://developer.apple.com/documentation/coreservices/kmditemfscontentchangedate ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/FSContentChangeDate``
	static var fsContentChangeDate: Self {
		Self()
	}
}
