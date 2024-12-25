private import let CoreServices.Metadata.MDItem.kMDItemFSIsExtensionHidden

@available(macOS 10.4, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`kMDItemFSIsExtensionHidden`](https://developer.apple.com/documentation/coreservices/kmditemfsisextensionhidden)\.
	struct FSIsExtensionHiddenKey: NSMetadataAttributeKey {
		public typealias Value = Bool

		public static var attributeKey: String { kMDItemFSIsExtensionHidden as String }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttribute.FSIsExtensionHiddenKey
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/FSIsExtensionHiddenKey``.
	static var fsIsExtensionHidden: Self {
		Self()
	}
}
