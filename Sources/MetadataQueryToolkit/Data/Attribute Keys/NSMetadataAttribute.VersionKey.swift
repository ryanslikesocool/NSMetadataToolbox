private import let Foundation.NSMetadataAttributes.NSMetadataItemVersionKey

@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemVersionKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemversionkey)\.
	enum VersionKey: NSMetadataAttributeKeyProtocol {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemVersionKey }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKey<NSMetadataAttribute.VersionKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/VersionKey``.
	static var version: Self {
		Self()
	}
}
