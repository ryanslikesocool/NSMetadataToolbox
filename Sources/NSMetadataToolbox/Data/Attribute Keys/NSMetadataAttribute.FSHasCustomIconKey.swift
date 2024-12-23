private import let CoreServices.Metadata.MDItem.kMDItemFSHasCustomIcon

@available(macOS 10.4, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`kMDItemFSHasCustomIcon`](https://developer.apple.com/documentation/coreservices/kmditemfshascustomicon)\.
	struct FSHasCustomIconKey: NSMetadataAttributeKey {
		public typealias Value = Bool

		public static var attributeKey: String { kMDItemFSHasCustomIcon as String }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttribute.FSHasCustomIconKey
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/FSHasCustomIconKey``.
	static var fsHasCustomIcon: Self {
		Self()
	}
}
