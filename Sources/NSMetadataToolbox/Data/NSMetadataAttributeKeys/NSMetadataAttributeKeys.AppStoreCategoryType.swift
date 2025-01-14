#if canImport(UniformTypeIdentifiers)
import UniformTypeIdentifiers
#endif

@available(macOS 10.6.6, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for ``kMDItemAppStoreCategoryType``.
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/appStoreCategoryType``
	struct AppStoreCategoryType: NSMetadataAttributeKey {
		public typealias Output = String

		public static var attributeKey: String {
			kMDItemAppStoreCategoryType
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.6.6, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.AppStoreCategoryType
{
	/// The attribute key for ``kMDItemAppStoreCategoryType``.
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/AppStoreCategoryType``
	static var appStoreCategoryType: Self {
		Self()
	}
}

// MARK: - Modifiers

public extension NSMetadataAttributeKeys.AppStoreCategoryType {
#if canImport(UniformTypeIdentifiers)
	// TODO: Validate that interpreting as a `UTType` is valid.
	// The
	// [documentation for `LSApplicationCategoryType`]( https://developer.apple.com/library/archive/documentation/General/Reference/InfoPlistKeyReference/Articles/LaunchServicesKeys.html#//apple_ref/doc/uid/TP40009250-SW8 )
	// implies that application categories are UTIs.
	/// Interpret the application category as a Uniform Type Identifier.
	@available(iOS 14, macCatalyst 14, macOS 11, tvOS 14, watchOS 7, *)
	func asUTType() -> some NSMetadataAttributeObject<Self.Input, UTType> {
		map { (input: Self.Output) throws -> UTType in
			guard let utType: UTType = UTType(input) else {
				throw NSMetadataError.conversionFailed(from: input, to: UTType.self)
			}
			return utType
		}
	}
#endif
}