import let CoreServices.Metadata.MDItem.kMDItemFSIsStationery

@available(macOS 10.4, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`kMDItemFSIsStationery`](https://developer.apple.com/documentation/coreservices/kmditemfsisstationery)\.
	struct FSIsStationery: NSMetadataAttributeKey {
		public typealias Value = Bool

		public static var attributeKey: String { kMDItemFSIsStationery as String }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKeys.FSIsStationery
{
	/// The shorthand attribute key accessor for ``NSMetadataAttributeKeys/FSIsStationery``.
	static var fsIsStationery: Self {
		Self()
	}
}
