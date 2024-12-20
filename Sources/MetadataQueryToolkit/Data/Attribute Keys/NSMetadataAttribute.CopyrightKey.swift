private import let Foundation.NSMetadataAttributes.NSMetadataItemCopyrightKey

@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemCopyrightKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemcopyrightkey)\.
	enum CopyrightKey: NSMetadataAttributeKeyProtocol {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemCopyrightKey }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKey<NSMetadataAttribute.CopyrightKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/CopyrightKey``.
	static var copyright: Self {
		Self()
	}
}
