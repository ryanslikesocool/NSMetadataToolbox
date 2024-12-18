import Foundation

@available(iOS 8, macCatalyst 13.1, macOS 10.9, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`NSMetadataItemContentTypeKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemcontenttypekey)\.
	enum ContentTypeKey: NSMetadataItemAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemContentTypeKey }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/ContentTypeKey``.
	var contentType: ContentTypeKey.Type {
		ContentTypeKey.self
	}
}