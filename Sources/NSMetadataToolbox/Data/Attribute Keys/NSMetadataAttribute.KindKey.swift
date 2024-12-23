private import let Foundation.NSMetadataAttributes.NSMetadataItemKindKey

@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemKindKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemkindkey)\.
	enum KindKey: NSMetadataAttributeKeyProtocol {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemKindKey }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKey<NSMetadataAttribute.KindKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/KindKey``.
	static var kind: Self {
		Self()
	}
}
