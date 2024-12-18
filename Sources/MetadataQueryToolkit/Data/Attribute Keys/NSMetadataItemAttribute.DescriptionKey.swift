import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`NSMetadataItemDescriptionKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemdescriptionkey)\.
	enum DescriptionKey: NSMetadataItemAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemDescriptionKey }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/DescriptionKey``.
	var description: DescriptionKey.Type {
		DescriptionKey.self
	}
}
