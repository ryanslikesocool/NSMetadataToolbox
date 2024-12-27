import let CoreServices.Metadata.MDItem.kMDItemFSIsExtensionHidden

@available(macOS 10.4, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`kMDItemFSIsExtensionHidden`](https://developer.apple.com/documentation/coreservices/kmditemfsisextensionhidden)\.
	struct FSIsExtensionHidden: NSMetadataAttributeKey {
		public typealias Value = Bool

		public static var attributeKey: String { kMDItemFSIsExtensionHidden as String }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKeys.FSIsExtensionHidden
{
	/// The shorthand attribute key accessor for ``NSMetadataAttributeKeys/FSIsExtensionHidden``.
	static var fsIsExtensionHidden: Self {
		Self()
	}
}
