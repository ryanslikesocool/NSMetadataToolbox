import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`NSMetadataItemDueDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemduedatekey)\.
	enum DueDateKey: NSMetadataItemAttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemDueDateKey }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/DueDateKey``.
	var dueDate: DueDateKey.Type {
		DueDateKey.self
	}
}