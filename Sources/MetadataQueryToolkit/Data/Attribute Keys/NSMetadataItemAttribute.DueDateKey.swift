import Foundation

@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemDueDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemduedatekey)\.
	enum DueDateKey: NSMetadataItemAttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemDueDateKey }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataAttribute/DueDateKey``.
	var dueDate: DueDateKey.Type {
		DueDateKey.self
	}
}

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == AnyNSMetadataAttributeKey<NSMetadataAttribute.DueDateKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/DueDateKey``.
	static var dueDate: Self {
		Self()
	}
}
