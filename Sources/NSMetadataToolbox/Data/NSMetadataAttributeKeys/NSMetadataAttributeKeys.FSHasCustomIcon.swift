import let CoreServices.Metadata.MDItem.kMDItemFSHasCustomIcon

@available(macOS 10.4, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`kMDItemFSHasCustomIcon`](https://developer.apple.com/documentation/coreservices/kmditemfshascustomicon)\.
	struct FSHasCustomIcon: NSMetadataAttributeKey {
		public typealias Value = Bool

		public static var attributeKey: String { kMDItemFSHasCustomIcon as String }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKeys.FSHasCustomIcon
{
	/// The shorthand attribute key accessor for ``NSMetadataAttributeKeys/FSHasCustomIcon``.
	static var fsHasCustomIcon: Self {
		Self()
	}
}
