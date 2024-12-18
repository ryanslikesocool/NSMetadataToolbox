import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItem {
	/// The attribute key for ``NSMetadataItemAppStoreCategoryTypeKey``.
	enum AppStoreCategoryTypeAttributeKey: NSMetadataItem.AttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemAppStoreCategoryTypeKey }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataItem.AttributeKey where
	Self == NSMetadataItem.AppStoreCategoryTypeAttributeKey
{
	/// The shorthand accessor for ``NSMetadataItem/AppStoreCategoryTypeAttributeKey``.
	static var appStoreCategoryType: Self.Type {
		Self.self
	}
}
