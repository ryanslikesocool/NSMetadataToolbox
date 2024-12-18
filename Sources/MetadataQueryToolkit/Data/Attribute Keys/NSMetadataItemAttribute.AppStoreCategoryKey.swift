import Foundation

// TODO: Should this key be available on other platforms?
@available(macOS 10.9, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for ``kMDItemAppStoreCategory``.
	enum AppStoreCategoryKey: NSMetadataItemAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { kMDItemAppStoreCategory }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/AppStoreCategoryKey``.
	var appStoreCategory: AppStoreCategoryKey.Type {
		AppStoreCategoryKey.self
	}
}
