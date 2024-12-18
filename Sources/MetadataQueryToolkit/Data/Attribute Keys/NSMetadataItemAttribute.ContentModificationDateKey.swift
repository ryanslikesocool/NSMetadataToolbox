import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`NSMetadataItemContentModificationDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemcontentmodificationdatekey)\.
	enum ContentModificationDateKey: NSMetadataItemAttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemContentModificationDateKey }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/ContentModificationDateKey``.
	var contentModificationDate: ContentModificationDateKey.Type {
		ContentModificationDateKey.self
	}
}
