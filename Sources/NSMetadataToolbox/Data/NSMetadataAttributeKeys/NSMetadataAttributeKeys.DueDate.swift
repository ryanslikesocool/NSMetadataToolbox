import let Foundation.NSMetadataAttributes.NSMetadataItemDueDateKey
import struct Foundation.Date

@available(macOS 10.9, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`NSMetadataItemDueDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemduedatekey)\.
	struct DueDate: NSMetadataAttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemDueDateKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKeys.DueDate
{
	/// The shorthand attribute key accessor for ``NSMetadataAttributeKeys/DueDate``.
	static var dueDate: Self {
		Self()
	}
}
