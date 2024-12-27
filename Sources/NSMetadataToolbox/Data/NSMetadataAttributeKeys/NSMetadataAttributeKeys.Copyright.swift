import let Foundation.NSMetadataAttributes.NSMetadataItemCopyrightKey

@available(macOS 10.9, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`NSMetadataItemCopyrightKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemcopyrightkey)\.
	struct Copyright: NSMetadataAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemCopyrightKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.Copyright
{
	/// The shorthand attribute key accessor for ``NSMetadataAttributeKeys/Copyright``.
	static var copyright: Self {
		Self()
	}
}
