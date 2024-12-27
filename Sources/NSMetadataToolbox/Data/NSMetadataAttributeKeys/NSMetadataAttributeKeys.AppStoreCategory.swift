// TODO: Should this key be available on other platforms?
@available(macOS 10.9, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for ``kMDItemAppStoreCategory``.
	struct AppStoreCategory: NSMetadataAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { kMDItemAppStoreCategory }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKeys.AppStoreCategory
{
	/// The shorthand attribute key accessor for ``NSMetadataAttributeKeys/AppStoreCategory``.
	static var appStoreCategory: Self {
		Self()
	}
}
