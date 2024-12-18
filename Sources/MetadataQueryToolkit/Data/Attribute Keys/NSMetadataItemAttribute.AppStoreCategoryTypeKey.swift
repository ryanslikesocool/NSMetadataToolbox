import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for ``NSMetadataItemAppStoreCategoryTypeKey``.
	enum AppStoreCategoryTypeKey: NSMetadataItemAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemAppStoreCategoryTypeKey }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/AppStoreCategoryTypeKey``.
	var appStoreCategoryType: AppStoreCategoryTypeKey.Type {
		AppStoreCategoryTypeKey.self
	}
}