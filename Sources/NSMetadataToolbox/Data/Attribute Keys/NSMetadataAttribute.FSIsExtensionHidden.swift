private import let CoreServices.Metadata.MDItem.kMDItemFSIsExtensionHidden

@available(macOS 10.4, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`kMDItemFSIsExtensionHidden`](https://developer.apple.com/documentation/coreservices/kmditemfsisextensionhidden)\.
	enum FSIsExtensionHiddenKey: NSMetadataAttributeKeyProtocol {
		public typealias Value = Bool

		public static var attributeKey: String { kMDItemFSIsExtensionHidden as String }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKey<NSMetadataAttribute.FSIsExtensionHiddenKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/FSIsExtensionHiddenKey``.
	static var fsIsExtensionHidden: Self {
		Self()
	}
}
