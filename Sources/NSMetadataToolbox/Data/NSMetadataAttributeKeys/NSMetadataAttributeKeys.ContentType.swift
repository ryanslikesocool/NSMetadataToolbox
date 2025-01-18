import let CoreServices.Metadata.MDItem.kMDItemContentType
#if canImport(UniformTypeIdentifiers)
import struct UniformTypeIdentifiers.UTType
#endif

@available(macOS 10.4, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`kMDItemContentType`]( https://developer.apple.com/documentation/coreservices/kmditemcontenttype ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/contentType``
	struct ContentType: NSMetadataAttributeKey {
		public typealias Output = String

		public static var attributeKey: String {
			kMDItemContentType as String
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.ContentType
{
	/// The attribute key for
	/// [`kMDItemContentType`]( https://developer.apple.com/documentation/coreservices/kmditemcontenttype ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/ContentType``
	static var contentType: Self {
		Self()
	}
}

// MARK: - Modifiers

#if canImport(UniformTypeIdentifiers)
@available(macOS 11, *)
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
