import let CoreServices.Metadata.MDItem.kMDItemContentTypeTree
#if canImport(UniformTypeIdentifiers)
import struct UniformTypeIdentifiers.UTType
#endif

@available(macOS 10.5, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`kMDItemContentTypeTree`]( https://developer.apple.com/documentation/coreservices/kmditemcontenttypetree ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/contentTypeTree``
	struct ContentTypeTree: NSMetadataAttributeKey {
		public typealias Output = [String]

		public static var attributeKey: String {
			kMDItemContentTypeTree as String
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.5, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.ContentTypeTree
{
	/// The attribute key for
	/// [`kMDItemContentTypeTree`]( https://developer.apple.com/documentation/coreservices/kmditemcontenttypetree ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/ContentTypeTree``
	static var contentTypeTree: Self {
		Self()
	}
}

// MARK: - Modifiers

#if canImport(UniformTypeIdentifiers)
@available(macOS 11, *)
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
