private import let CoreServices.Metadata.MDItem.kMDItemFSHasCustomIcon

@available(macOS 10.4, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`kMDItemFSHasCustomIcon`](https://developer.apple.com/documentation/coreservices/kmditemfshascustomicon)\.
	enum FSHasCustomIconKey: NSMetadataAttributeKeyProtocol {
		public typealias Value = Bool

		public static var attributeKey: String { kMDItemFSHasCustomIcon as String }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKey<NSMetadataAttribute.FSHasCustomIconKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/FSHasCustomIconKey``.
	static var fsHasCustomIcon: Self {
		Self()
	}
}
