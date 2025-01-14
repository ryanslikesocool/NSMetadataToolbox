@available(macOS 10.5, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for ``kMDItemSupportFileType``.
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/supportFileType``
	struct SupportFileType: NSMetadataAttributeKey {
		public typealias Output = [String]

		public static var attributeKey: String {
			kMDItemSupportFileType
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.5, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.SupportFileType
{
	/// The attribute key for ``kMDItemSupportFileType``.
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/SupportFileType``
	static var supportFileType: Self {
		Self()
	}
}
