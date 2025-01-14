@available(macOS 10.9, *)
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

@available(macOS 10.9, *)
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
