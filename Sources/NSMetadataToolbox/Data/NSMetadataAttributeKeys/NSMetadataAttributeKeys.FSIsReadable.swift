@available(macOS 10.0, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for ``kMDItemFSIsReadable``.
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/fsIsReadable``
	struct FSIsReadable: NSMetadataAttributeKey {
		public typealias Output = Bool

		public static var attributeKey: String {
			kMDItemFSIsReadable
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.0, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.FSIsReadable
{
	/// The attribute key for ``kMDItemFSIsReadable``.
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/FSIsReadable``
	static var fsIsReadable: Self {
		Self()
	}
}
