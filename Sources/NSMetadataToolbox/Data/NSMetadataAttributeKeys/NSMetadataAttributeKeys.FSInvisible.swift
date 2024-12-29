import let CoreServices.Metadata.MDItem.kMDItemFSInvisible

@available(macOS 10.4, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`kMDItemFSInvisible`](https://developer.apple.com/documentation/coreservices/kmditemfsinvisible)\.
	///
	/// ## See Also
	/// - ``NSMetadataAttributeObject/fsInvisible``
	struct FSInvisible: NSMetadataAttributeKey {
		public typealias Output = Bool

		public static var attributeKey: String { kMDItemFSInvisible as String }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.FSInvisible
{
	/// The attribute key for
	/// [`kMDItemFSInvisible`](https://developer.apple.com/documentation/coreservices/kmditemfsinvisible)\.
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/FSInvisible``
	static var fsInvisible: Self {
		Self()
	}
}
