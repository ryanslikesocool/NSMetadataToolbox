import Foundation

@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemKeywordsKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemkeywordskey)\.
	enum KeywordsKey: NSMetadataItemAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemKeywordsKey }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataAttribute/KeywordsKey``.
	var keywords: KeywordsKey.Type {
		KeywordsKey.self
	}
}

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == AnyNSMetadataAttributeKey<NSMetadataAttribute.KeywordsKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/KeywordsKey``.
	static var keywords: Self {
		Self()
	}
}
