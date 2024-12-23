private import let Foundation.NSMetadataAttributes.NSMetadataItemCFBundleIdentifierKey

@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemCFBundleIdentifierKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemcfbundleidentifierkey)\.
	enum CFBundleIdentifierKey: NSMetadataAttributeKeyProtocol {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemCFBundleIdentifierKey }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKey<NSMetadataAttribute.CFBundleIdentifierKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/CFBundleIdentifierKey``.
	static var cfBundleIdentifier: Self {
		Self()
	}
}
