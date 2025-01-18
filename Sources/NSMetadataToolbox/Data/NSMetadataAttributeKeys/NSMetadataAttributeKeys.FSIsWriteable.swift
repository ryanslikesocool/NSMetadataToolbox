@available(macOS 10.0, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for ``kMDItemFSIsWriteable``.
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/fsIsWriteable``
	struct FSIsWriteable: NSMetadataAttributeKey {
		public typealias Output = Bool

		public static var attributeKey: String {
			kMDItemFSIsWriteable
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.0, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.FSIsWriteable
{
	/// The attribute key for ``kMDItemFSIsWriteable``.
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/FSIsWriteable``
	static var fsIsWriteable: Self {
		Self()
	}
}
