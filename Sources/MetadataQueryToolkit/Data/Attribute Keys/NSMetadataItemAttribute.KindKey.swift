import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`NSMetadataItemKindKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemkindkey)\.
	enum KindKey: NSMetadataItemAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemKindKey }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/KindKey``.
	var kind: KindKey.Type {
		KindKey.self
	}
}
