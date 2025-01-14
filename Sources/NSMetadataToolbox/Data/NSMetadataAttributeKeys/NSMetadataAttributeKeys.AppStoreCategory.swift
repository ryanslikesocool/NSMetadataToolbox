@available(macOS 10.9, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for ``kMDItemAppStoreCategory``.
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/appStoreCategory``
	struct AppStoreCategory: NSMetadataAttributeKey {
		public typealias Output = String

		public static var attributeKey: String {
			kMDItemAppStoreCategory
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.AppStoreCategory
{
	/// The attribute key for ``kMDItemAppStoreCategory``.
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/AppStoreCategory``
	static var appStoreCategory: Self {
		Self()
	}
}
