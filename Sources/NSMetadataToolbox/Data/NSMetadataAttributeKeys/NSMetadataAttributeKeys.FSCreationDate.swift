import let CoreServices.Metadata.MDItem.kMDItemFSCreationDate
import struct Foundation.Date

@available(macOS 10.4, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`kMDItemFSCreationDate`]( https://developer.apple.com/documentation/coreservices/kmditemfscreationdate ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/fsCreationDate``
	struct FSCreationDate: NSMetadataAttributeKey {
		public typealias Output = Date

		public static var attributeKey: String {
			kMDItemFSCreationDate as String
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.FSCreationDate
{
	/// The attribute key for
	/// [`kMDItemFSCreationDate`]( https://developer.apple.com/documentation/coreservices/kmditemfscreationdate ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/FSCreationDate``
	static var fsCreationDate: Self {
		Self()
	}
}
