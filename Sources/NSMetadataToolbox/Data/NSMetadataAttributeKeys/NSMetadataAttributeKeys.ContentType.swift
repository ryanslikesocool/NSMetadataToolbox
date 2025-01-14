import let Foundation.NSMetadataAttributes.NSMetadataItemContentTypeKey
#if canImport(UniformTypeIdentifiers)
import struct UniformTypeIdentifiers.UTType
#endif

@available(iOS 8, macCatalyst 13.1, macOS 10.9, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`NSMetadataItemContentTypeKey`]( https://developer.apple.com/documentation/foundation/nsmetadataitemcontenttypekey ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/contentType``
	struct ContentType: NSMetadataAttributeKey {
		public typealias Output = String

		public static var attributeKey: String {
			NSMetadataItemContentTypeKey
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(iOS 8, macCatalyst 13.1, macOS 10.9, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.ContentType
{
	/// The attribute key for
	/// [`NSMetadataItemContentTypeKey`]( https://developer.apple.com/documentation/foundation/nsmetadataitemcontenttypekey ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/ContentType``
	static var contentType: Self {
		Self()
	}
}

// MARK: - Modifiers

#if canImport(UniformTypeIdentifiers)
@available(iOS 14, macCatalyst 14, macOS 11, tvOS 14, visionOS 1, watchOS 7, *)
public extension NSMetadataAttributeKeys.ContentType {
	/// Convert the content type string to a `UTType` using
	/// [`init(_:)`]( https://developer.apple.com/documentation/uniformtypeidentifiers/uttype-swift.struct/init(_:) ).
	func asUTType() -> some NSMetadataAttributeObject<Self.Input, UTType> {
		map { (input: Output) throws -> UTType in
			guard let result = UTType(input) else {
				throw NSMetadataError.conversionFailed(from: Output.self, to: UTType.self)
			}
			return result
		}
	}
}
#endif
