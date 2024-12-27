import let Foundation.NSMetadataAttributes.NSMetadataItemContentTypeTreeKey
#if canImport(UniformTypeIdentifiers)
import struct UniformTypeIdentifiers.UTType
#endif

@available(iOS 8, macCatalyst 13.1, macOS 10.9, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemContentTypeTreeKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemcontenttypetreekey)\.
	struct ContentTypeTreeKey: NSMetadataAttributeKey {
		// TODO: Validate Value type
		// https://developer.apple.com/documentation/coreservices/kmditemcontenttype
		// Documentation indicates that the value represents a UTI.
		// Should we `import UniformTypeIdentifiers` and set `Value = [UTType]`?
		public typealias Value = [String]

		public static var attributeKey: String { NSMetadataItemContentTypeTreeKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(iOS 8, macCatalyst 13.1, macOS 10.9, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttribute.ContentTypeTreeKey
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/ContentTypeTreeKey``.
	static var contentTypeTree: Self {
		Self()
	}
}

// MARK: - Modifiers

#if canImport(UniformTypeIdentifiers)
@available(iOS 14, macCatalyst 14, macOS 11, tvOS 14, visionOS 1, watchOS 7, *)
public extension NSMetadataAttribute.ContentTypeTreeKey {
	/// Convert the content type string to a UTType using
	/// [init(_:)](https://developer.apple.com/documentation/uniformtypeidentifiers/uttype-swift.struct/init(_:))\.
	///
	/// - Remark: Elements that cannot be initialized to a UTType are discarded.
	func asUTTypes() -> some NSMetadataAttributeProtocol<Self.Input, [UTType]?> {
		map { (input: Output) -> [UTType]? in
			input.compactMap(UTType.init)
		}
	}
}
#endif
