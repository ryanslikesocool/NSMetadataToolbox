import Foundation

// TODO: Should this key be available on other platforms?
@available(macOS 10.9, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for ``kMDItemAppStoreCategory``.
	struct AppStoreCategoryKey: NSMetadataItemAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { kMDItemAppStoreCategory }

		public init() { }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/AppStoreCategoryKey``.
	var appStoreCategory: AppStoreCategoryKey.Type {
		AppStoreCategoryKey.self
	}
}

@available(macOS 10.9, *)
public extension NSMetadataItemAttributeProtocol where
	Self == NSMetadataItemAttribute.AppStoreCategoryKey
{
	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/AppStoreCategoryKey``.
	static var appStoreCategory: Self {
		Self()
	}
}
