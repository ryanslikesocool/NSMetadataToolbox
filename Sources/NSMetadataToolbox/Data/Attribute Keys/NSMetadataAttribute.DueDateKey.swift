import struct Foundation.Date
private import let Foundation.NSMetadataAttributes.NSMetadataItemDueDateKey

@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemDueDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemduedatekey)\.
	struct DueDateKey: NSMetadataAttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemDueDateKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttribute.DueDateKey
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/DueDateKey``.
	static var dueDate: Self {
		Self()
	}
}
