private import let Foundation.NSMetadataAttributes.NSMetadataItemKindKey

@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemKindKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemkindkey)\.
	struct KindKey: NSMetadataAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemKindKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttribute.KindKey
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/KindKey``.
	static var kind: Self {
		Self()
	}
}
