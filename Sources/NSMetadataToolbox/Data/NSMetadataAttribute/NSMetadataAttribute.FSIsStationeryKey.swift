import let CoreServices.Metadata.MDItem.kMDItemFSIsStationery

@available(macOS 10.4, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`kMDItemFSIsStationery`](https://developer.apple.com/documentation/coreservices/kmditemfsisstationery)\.
	struct FSIsStationeryKey: NSMetadataAttributeKey {
		public typealias Value = Bool

		public static var attributeKey: String { kMDItemFSIsStationery as String }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttribute.FSIsStationeryKey
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/FSIsStationeryKey``.
	static var fsIsStationery: Self {
		Self()
	}
}
