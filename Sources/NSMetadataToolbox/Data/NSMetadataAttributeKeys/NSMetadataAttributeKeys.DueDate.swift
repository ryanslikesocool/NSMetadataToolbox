import let CoreServices.Metadata.MDItem.kMDItemDueDate
import struct Foundation.Date

@available(macOS 10.4, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`kMDItemDueDate`]( https://developer.apple.com/documentation/coreservices/kmditemduedate ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/dueDate``
	struct DueDate: NSMetadataAttributeKey {
		public typealias Output = Date

		public static var attributeKey: String {
			kMDItemDueDate as String
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.DueDate
{
	/// The attribute key for
	/// [`kMDItemDueDate`]( https://developer.apple.com/documentation/coreservices/kmditemduedate ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/DueDate``
	static var dueDate: Self {
		Self()
	}
}
