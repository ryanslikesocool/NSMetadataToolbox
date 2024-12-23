private import let CoreServices.Metadata.MDItem.kMDItemFSInvisible

@available(macOS 10.4, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`kMDItemFSInvisible`](https://developer.apple.com/documentation/coreservices/kmditemfsinvisible)\.
	enum FSInvisibleKey: NSMetadataAttributeKeyProtocol {
		public typealias Value = Bool

		public static var attributeKey: String { kMDItemFSInvisible as String }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKey<NSMetadataAttribute.FSInvisibleKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/FSInvisibleKey``.
	static var fsInvisible: Self {
		Self()
	}
}
