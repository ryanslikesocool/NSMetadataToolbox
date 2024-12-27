import let Foundation.NSMetadataAttributes.NSMetadataItemKindKey

@available(macOS 10.9, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`NSMetadataItemKindKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemkindkey)\.
	struct Kind: NSMetadataAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemKindKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKeys.Kind
{
	/// The shorthand attribute key accessor for ``NSMetadataAttributeKeys/Kind``.
	static var kind: Self {
		Self()
	}
}