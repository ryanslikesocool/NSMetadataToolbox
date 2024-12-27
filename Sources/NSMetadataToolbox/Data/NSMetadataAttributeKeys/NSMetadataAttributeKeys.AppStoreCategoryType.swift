// TODO: Should this key be available on other platforms?
@available(macOS 10.9, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for ``kMDItemAppStoreCategoryType``.
	struct AppStoreCategoryType: NSMetadataAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { kMDItemAppStoreCategoryType }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.AppStoreCategoryType
{
	/// The shorthand attribute key accessor for ``NSMetadataAttributeKeys/AppStoreCategoryType``.
	static var appStoreCategoryType: Self {
		Self()
	}
}
