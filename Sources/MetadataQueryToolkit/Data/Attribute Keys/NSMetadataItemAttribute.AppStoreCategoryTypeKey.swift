import Foundation

// TODO: Should this key be available on other platforms?
@available(macOS 10.9, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for ``kMDItemAppStoreCategoryType``.
	struct AppStoreCategoryTypeKey: NSMetadataItemAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { kMDItemAppStoreCategoryType }

		public init() { }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/AppStoreCategoryTypeKey``.
	var appStoreCategoryType: AppStoreCategoryTypeKey.Type {
		AppStoreCategoryTypeKey.self
	}
}

@available(macOS 10.9, *)
public extension NSMetadataItemAttributeProtocol where
	Self == NSMetadataItemAttribute.AppStoreCategoryTypeKey
{
	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/AppStoreCategoryTypeKey``.
	static var appStoreCategoryType: Self {
		Self()
	}
}
