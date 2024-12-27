import let CoreServices.Metadata.MDItem.kMDItemFSInvisible

@available(macOS 10.4, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`kMDItemFSInvisible`](https://developer.apple.com/documentation/coreservices/kmditemfsinvisible)\.
	struct FSInvisibleKey: NSMetadataAttributeKey {
		public typealias Value = Bool

		public static var attributeKey: String { kMDItemFSInvisible as String }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttribute.FSInvisibleKey
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/FSInvisibleKey``.
	static var fsInvisible: Self {
		Self()
	}
}
