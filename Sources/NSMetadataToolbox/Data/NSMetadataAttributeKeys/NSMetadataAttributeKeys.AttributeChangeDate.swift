import let CoreServices.Metadata.MDItem.kMDItemAttributeChangeDate
import struct Foundation.Date

@available(macOS 10.4, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`kMDItemAttributeChangeDate`]( https://developer.apple.com/documentation/coreservices/kmditemattributechangedate ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/attributeChangeDate``
	struct AttributeChangeDate: NSMetadataAttributeKey {
		public typealias Output = Date

		public static var attributeKey: String {
			kMDItemAttributeChangeDate as String
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.AttributeChangeDate
{
	/// The attribute key for
	/// [`kMDItemAttributeChangeDate`]( https://developer.apple.com/documentation/coreservices/kmditemattributechangedate ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/AttributeChangeDate``
	static var attributeChangeDate: Self {
		Self()
	}
}
