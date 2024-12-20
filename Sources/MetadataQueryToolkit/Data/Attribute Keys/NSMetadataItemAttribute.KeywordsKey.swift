import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`NSMetadataItemKeywordsKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemkeywordskey)\.
	struct KeywordsKey: NSMetadataItemAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemKeywordsKey }

		public init() { }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/KeywordsKey``.
	var keywords: KeywordsKey.Type {
		KeywordsKey.self
	}
}

@available(macOS 10.9, *)
public extension NSMetadataItemAttributeProtocol where
	Self == NSMetadataItemAttribute.KeywordsKey
{
	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/KeywordsKey``.
	static var keywords: Self {
		Self()
	}
}
