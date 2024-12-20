import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`NSMetadataItemDueDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemduedatekey)\.
	struct DueDateKey: NSMetadataItemAttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemDueDateKey }

		public init() { }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/DueDateKey``.
	var dueDate: DueDateKey.Type {
		DueDateKey.self
	}
}

@available(macOS 10.9, *)
public extension NSMetadataItemAttributeProtocol where
	Self == NSMetadataItemAttribute.DueDateKey
{
	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/DueDateKey``.
	static var dueDate: Self {
		Self()
	}
}
