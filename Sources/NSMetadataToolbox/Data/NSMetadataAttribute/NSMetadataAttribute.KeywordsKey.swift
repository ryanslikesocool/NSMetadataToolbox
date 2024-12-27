import let Foundation.NSMetadataAttributes.NSMetadataItemKeywordsKey

@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemKeywordsKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemkeywordskey)\.
	struct KeywordsKey: NSMetadataAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemKeywordsKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttribute.KeywordsKey
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/KeywordsKey``.
	static var keywords: Self {
		Self()
	}
}
