import Foundation

// TODO: Should this key be available on other platforms?
@available(macOS 10.9, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for ``kMDItemAlternateNames``.
	enum AlternateNamesKey: NSMetadataItemAttributeKey {
		public typealias Value = [String]

		public static var attributeKey: String { kMDItemAlternateNames }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/AlternateNamesKey``.
	var alternateNames: AlternateNamesKey.Type {
		AlternateNamesKey.self
	}
}
