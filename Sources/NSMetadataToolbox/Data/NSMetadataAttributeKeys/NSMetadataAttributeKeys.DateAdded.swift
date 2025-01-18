import let CoreServices.Metadata.MDItem.kMDItemDateAdded
import struct Foundation.Date

@available(macOS 10.7, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`kMDItemDateAdded`]( https://developer.apple.com/documentation/coreservices/kmditemdateadded ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/dateAdded``
	struct DateAdded: NSMetadataAttributeKey {
		public typealias Output = Date

		public static var attributeKey: String {
			kMDItemDateAdded as String
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.7, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.DateAdded
{
	/// The attribute key for
	/// [`kMDItemDateAdded`]( https://developer.apple.com/documentation/coreservices/kmditemdateadded ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/DateAdded``
	static var dateAdded: Self {
		Self()
	}
}
