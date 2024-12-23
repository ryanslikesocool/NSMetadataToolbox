private import let CoreServices.Metadata.MDItem.kMDItemFSIsStationery

@available(macOS 10.4, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`kMDItemFSIsStationery`](https://developer.apple.com/documentation/coreservices/kmditemfsisstationery)\.
	enum FSIsStationeryKey: NSMetadataAttributeKeyProtocol {
		public typealias Value = Bool

		public static var attributeKey: String { kMDItemFSIsStationery as String }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKey<NSMetadataAttribute.FSIsStationeryKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/FSIsStationeryKey``.
	static var fsIsStationery: Self {
		Self()
	}
}
