import let CoreServices.Metadata.MDItem.kMDItemFSIsStationery

@available(macOS 10.4, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`kMDItemFSIsStationery`]( https://developer.apple.com/documentation/coreservices/kmditemfsisstationery ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/fsIsStationery``
	struct FSIsStationery: NSMetadataAttributeKey {
		public typealias Output = Bool

		public static var attributeKey: String {
			kMDItemFSIsStationery as String
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.FSIsStationery
{
	/// The attribute key for
	/// [`kMDItemFSIsStationery`]( https://developer.apple.com/documentation/coreservices/kmditemfsisstationery ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/FSIsStationery``
	static var fsIsStationery: Self {
		Self()
	}
}
