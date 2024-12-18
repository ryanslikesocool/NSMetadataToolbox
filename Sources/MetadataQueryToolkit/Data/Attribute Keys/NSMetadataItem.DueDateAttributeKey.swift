import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItem {
	/// The attribute key for
	/// [`NSMetadataItemDueDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemduedatekey)
	/// .
	enum DueDateAttributeKey: NSMetadataItem.AttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemDueDateKey }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataItem.AttributeKey where
	Self == NSMetadataItem.DueDateAttributeKey
{
	/// The shorthand accessor for ``NSMetadataItem/DueDateAttributeKey``.
	static var dueDate: Self.Type {
		Self.self
	}
}
