import let Foundation.NSMetadataAttributes.NSMetadataItemKeywordsKey

@available(macOS 10.9, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`NSMetadataItemKeywordsKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemkeywordskey)\.
	struct Keywords: NSMetadataAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemKeywordsKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKeys.Keywords
{
	/// The shorthand attribute key accessor for ``NSMetadataAttributeKeys/Keywords``.
	static var keywords: Self {
		Self()
	}
}
