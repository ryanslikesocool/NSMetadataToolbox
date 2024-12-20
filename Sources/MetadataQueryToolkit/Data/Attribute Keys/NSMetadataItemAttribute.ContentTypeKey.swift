import Foundation

@available(iOS 8, macCatalyst 13.1, macOS 10.9, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemContentTypeKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemcontenttypekey)\.
	enum ContentTypeKey: NSMetadataItemAttributeKey {
		// TODO: Validate Value type
		// https://developer.apple.com/documentation/coreservices/kmditemcontenttype
		// Documentation indicates that the value represents a UTI.
		// Should we `import UniformTypeIdentifiers` and set `Value = UTType`?
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemContentTypeKey }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataAttribute/ContentTypeKey``.
	var contentType: ContentTypeKey.Type {
		ContentTypeKey.self
	}
}

@available(iOS 8, macCatalyst 13.1, macOS 10.9, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttributeProtocol where
	Self == AnyNSMetadataAttributeKey<NSMetadataAttribute.ContentTypeKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/ContentTypeKey``.
	static var contentType: Self {
		Self()
	}
}
