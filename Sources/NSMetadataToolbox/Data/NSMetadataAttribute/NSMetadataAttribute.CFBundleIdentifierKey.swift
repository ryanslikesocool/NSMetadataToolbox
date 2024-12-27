import let Foundation.NSMetadataAttributes.NSMetadataItemCFBundleIdentifierKey

@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemCFBundleIdentifierKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemcfbundleidentifierkey)\.
	struct CFBundleIdentifierKey: NSMetadataAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemCFBundleIdentifierKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttribute.CFBundleIdentifierKey
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/CFBundleIdentifierKey``.
	static var cfBundleIdentifier: Self {
		Self()
	}
}
