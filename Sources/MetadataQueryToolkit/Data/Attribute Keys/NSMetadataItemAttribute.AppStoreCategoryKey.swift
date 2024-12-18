import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for ``NSMetadataItemAppStoreCategoryKey``.
	enum AppStoreCategoryKey: NSMetadataItemAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemAppStoreCategoryKey }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/AppStoreCategoryKey``.
	var appStoreCategory: AppStoreCategoryKey.Type {
		AppStoreCategoryKey.self
	}
}
