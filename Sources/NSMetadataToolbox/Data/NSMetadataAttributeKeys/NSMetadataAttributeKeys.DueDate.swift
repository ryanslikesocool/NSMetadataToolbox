import let Foundation.NSMetadataAttributes.NSMetadataItemDueDateKey
import struct Foundation.Date

@available(macOS 10.9, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`NSMetadataItemDueDateKey`]( https://developer.apple.com/documentation/foundation/nsmetadataitemduedatekey ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/dueDate``
	struct DueDate: NSMetadataAttributeKey {
		public typealias Output = Date

		public static var attributeKey: String {
			NSMetadataItemDueDateKey
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.DueDate
{
	/// The attribute key for
	/// [`NSMetadataItemDueDateKey`]( https://developer.apple.com/documentation/foundation/nsmetadataitemduedatekey ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/DueDate``
	static var dueDate: Self {
		Self()
	}
}
