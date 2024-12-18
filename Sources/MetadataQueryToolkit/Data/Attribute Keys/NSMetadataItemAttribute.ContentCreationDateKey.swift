import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`NSMetadataItemContentCreationDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemcontentcreationdatekey)\.
	enum ContentCreationDateKey: NSMetadataItemAttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemContentCreationDateKey }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/ContentCreationDateKey``.
	var contentCreationDate: ContentCreationDateKey.Type {
		ContentCreationDateKey.self
	}
}