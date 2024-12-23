// TODO: Should this key be available on other platforms?
@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for ``kMDItemAppStoreCategoryType``.
	struct AppStoreCategoryTypeKey: NSMetadataAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { kMDItemAppStoreCategoryType }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttribute.AppStoreCategoryTypeKey
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/AppStoreCategoryTypeKey``.
	static var appStoreCategoryType: Self {
		Self()
	}
}
