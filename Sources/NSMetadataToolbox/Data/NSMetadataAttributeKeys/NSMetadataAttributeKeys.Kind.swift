import let Foundation.NSMetadataAttributes.NSMetadataItemKindKey

@available(macOS 10.9, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`NSMetadataItemKindKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemkindkey)\.
	///
	/// ## See Also
	/// - ``NSMetadataAttributeObject/kind``
	struct Kind: NSMetadataAttributeKey {
		public typealias Output = String

		public static var attributeKey: String { NSMetadataItemKindKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.Kind
{
	/// The attribute key for
	/// [`NSMetadataItemKindKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemkindkey)\.
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/Kind``
	static var kind: Self {
		Self()
	}
}
