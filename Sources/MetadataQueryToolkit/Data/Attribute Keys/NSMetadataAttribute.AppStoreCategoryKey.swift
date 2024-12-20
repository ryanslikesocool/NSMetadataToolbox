// TODO: Should this key be available on other platforms?
@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for ``kMDItemAppStoreCategory``.
	enum AppStoreCategoryKey: NSMetadataAttributeKeyProtocol {
		public typealias Value = String

		public static var attributeKey: String { kMDItemAppStoreCategory }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKey<NSMetadataAttribute.AppStoreCategoryKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/AppStoreCategoryKey``.
	static var appStoreCategory: Self {
		Self()
	}
}
