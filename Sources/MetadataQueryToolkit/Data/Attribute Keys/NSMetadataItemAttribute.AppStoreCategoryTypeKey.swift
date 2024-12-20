// TODO: Should this key be available on other platforms?
@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for ``kMDItemAppStoreCategoryType``.
	enum AppStoreCategoryTypeKey: NSMetadataItemAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { kMDItemAppStoreCategoryType }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataAttribute/AppStoreCategoryTypeKey``.
	var appStoreCategoryType: AppStoreCategoryTypeKey.Type {
		AppStoreCategoryTypeKey.self
	}
}

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == AnyNSMetadataAttributeKey<NSMetadataAttribute.AppStoreCategoryTypeKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/AppStoreCategoryTypeKey``.
	static var appStoreCategoryType: Self {
		Self()
	}
}
