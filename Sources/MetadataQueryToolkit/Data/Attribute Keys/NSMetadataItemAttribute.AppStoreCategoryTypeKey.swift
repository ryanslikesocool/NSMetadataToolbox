import Foundation

// TODO: Should this key be available on other platforms?
@available(macOS 10.9, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for ``kMDItemAppStoreCategoryType``.
	enum AppStoreCategoryTypeKey: NSMetadataItemAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { kMDItemAppStoreCategoryType }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/AppStoreCategoryTypeKey``.
	var appStoreCategoryType: AppStoreCategoryTypeKey.Type {
		AppStoreCategoryTypeKey.self
	}
}
