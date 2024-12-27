import let Foundation.NSMetadataAttributes.NSMetadataItemVersionKey

@available(macOS 10.9, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`NSMetadataItemVersionKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemversionkey)\.
	struct Version: NSMetadataAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemVersionKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKeys.Version
{
	/// The shorthand attribute key accessor for ``NSMetadataAttributeKeys/Version``.
	static var version: Self {
		Self()
	}
}
