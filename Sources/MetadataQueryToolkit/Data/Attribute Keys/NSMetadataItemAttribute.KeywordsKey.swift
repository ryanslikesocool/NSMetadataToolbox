import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`NSMetadataItemKeywordsKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemkeywordskey)\.
	enum KeywordsKey: NSMetadataItemAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemKeywordsKey }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/KeywordsKey``.
	var keywords: KeywordsKey.Type {
		KeywordsKey.self
	}
}
