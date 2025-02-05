import let Foundation.NSMetadataAttributes.NSMetadataItemContentTypeTreeKey
#if canImport(UniformTypeIdentifiers)
import struct UniformTypeIdentifiers.UTType
#endif

@available(iOS 8, macCatalyst 13.1, macOS 10.9, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`NSMetadataItemContentTypeTreeKey`]( https://developer.apple.com/documentation/foundation/nsmetadataitemcontenttypetreekey ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/contentTypeTree``
	struct ContentTypeTree: NSMetadataAttributeKey {
		public typealias Output = [String]

		public static var attributeKey: String {
			NSMetadataItemContentTypeTreeKey
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(iOS 8, macCatalyst 13.1, macOS 10.9, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.ContentTypeTree
{
	/// The attribute key for
	/// [`NSMetadataItemContentTypeTreeKey`]( https://developer.apple.com/documentation/foundation/nsmetadataitemcontenttypetreekey ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/ContentTypeTree``
	static var contentTypeTree: Self {
		Self()
	}
}

// MARK: - Modifiers

#if canImport(UniformTypeIdentifiers)
@available(iOS 14, macCatalyst 14, macOS 11, tvOS 14, visionOS 1, watchOS 7, *)
public extension NSMetadataAttributeKeys.ContentTypeTree {
	/// Convert each element to a `UTType` using
	/// [`init(_:)`]( https://developer.apple.com/documentation/uniformtypeidentifiers/uttype-swift.struct/init(_:) ).
	func asUTTypes() -> some NSMetadataAttributeObject<Self.Input, [Result<UTType, NSMetadataError>]> {
		map { (input: Output.Element) -> Result<UTType, NSMetadataError> in
			guard let result = UTType(input) else {
				return .failure(NSMetadataError.conversionFailed(from: input, to: UTType.self))
			}
			return .success(result)
		}
	}
}
#endif
