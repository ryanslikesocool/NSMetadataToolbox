import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItem {
	/// The attribute key for ``NSMetadataItemAppStoreCategoryKey``.
	enum AppStoreCategoryAttributeKey: NSMetadataItem.AttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemAppStoreCategoryKey }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataItem.AttributeKey where
	Self == NSMetadataItem.AppStoreCategoryAttributeKey
{
	/// The shorthand accessor for ``NSMetadataItem/AppStoreCategoryAttributeKey``.
	static var appStoreCategory: Self.Type {
		Self.self
	}
}
