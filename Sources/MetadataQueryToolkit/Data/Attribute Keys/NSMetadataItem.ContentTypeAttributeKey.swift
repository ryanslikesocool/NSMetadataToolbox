import Foundation

@available(iOS 8, macCatalyst 13.1, macOS 10.9, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataItem {
	/// The attribute key for
	/// [`NSMetadataItemContentTypeKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemcontenttypekey)
	/// .
	enum ContentTypeAttributeKey: NSMetadataItem.AttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemContentTypeKey }
	}
}

// MARK: - Convenience

@available(iOS 8, macCatalyst 13.1, macOS 10.9, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataItem.AttributeKey where
	Self == NSMetadataItem.ContentTypeAttributeKey
{
	/// The shorthand accessor for ``NSMetadataItem/ContentTypeAttributeKey``.
	static var contentType: Self.Type {
		Self.self
	}
}
