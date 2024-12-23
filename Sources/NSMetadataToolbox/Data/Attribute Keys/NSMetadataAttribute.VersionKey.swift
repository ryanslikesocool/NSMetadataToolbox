private import let Foundation.NSMetadataAttributes.NSMetadataItemVersionKey

@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemVersionKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemversionkey)\.
	struct VersionKey: NSMetadataAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemVersionKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttribute.VersionKey
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/VersionKey``.
	static var version: Self {
		Self()
	}
}
