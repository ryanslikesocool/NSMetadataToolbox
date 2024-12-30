import let CoreServices.Metadata.MDItem.kMDItemFSIsExtensionHidden

@available(macOS 10.4, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`kMDItemFSIsExtensionHidden`](https://developer.apple.com/documentation/coreservices/kmditemfsisextensionhidden)\.
	///
	/// ## See Also
	/// - ``NSMetadataAttributeObject/fsIsExtensionHidden``
	struct FSIsExtensionHidden: NSMetadataAttributeKey {
		public typealias Output = Bool

		public static var attributeKey: String { kMDItemFSIsExtensionHidden as String }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.FSIsExtensionHidden
{
	/// The attribute key for
	/// [`kMDItemFSIsExtensionHidden`](https://developer.apple.com/documentation/coreservices/kmditemfsisextensionhidden)\.
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/FSIsExtensionHidden``
	static var fsIsExtensionHidden: Self {
		Self()
	}
}
