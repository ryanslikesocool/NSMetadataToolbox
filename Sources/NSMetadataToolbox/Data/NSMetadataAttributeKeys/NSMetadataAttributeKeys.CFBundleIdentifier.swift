import let Foundation.NSMetadataAttributes.NSMetadataItemCFBundleIdentifierKey

@available(macOS 10.9, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`NSMetadataItemCFBundleIdentifierKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemcfbundleidentifierkey)\.
	struct CFBundleIdentifier: NSMetadataAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemCFBundleIdentifierKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.CFBundleIdentifier
{
	/// The shorthand attribute key accessor for ``NSMetadataAttributeKeys/CFBundleIdentifier``.
	static var cfBundleIdentifier: Self {
		Self()
	}
}
