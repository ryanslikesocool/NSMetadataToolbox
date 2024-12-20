import Foundation

@available(iOS 8, macCatalyst 13.1, macOS 10.9, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`NSMetadataItemContentTypeKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemcontenttypekey)\.
	struct ContentTypeKey: NSMetadataItemAttributeKey {
		// TODO: Validate Value type
		// https://developer.apple.com/documentation/coreservices/kmditemcontenttype
		// Documentation indicates that the value represents a UTI.
		// Should we `import UniformTypeIdentifiers` and set `Value = UTType`?
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemContentTypeKey }

		public init() { }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/ContentTypeKey``.
	var contentType: ContentTypeKey.Type {
		ContentTypeKey.self
	}
}

@available(iOS 8, macCatalyst 13.1, macOS 10.9, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataItemAttributeProtocol where
	Self == NSMetadataItemAttribute.ContentTypeKey
{
	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/ContentTypeKey``.
	static var contentType: Self {
		Self()
	}
}
