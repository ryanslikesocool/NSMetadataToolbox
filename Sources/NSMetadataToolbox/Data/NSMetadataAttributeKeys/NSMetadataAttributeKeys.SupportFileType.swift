import let CoreServices.Metadata.MDItem.kMDItemSupportFileType

@available(macOS 10.5, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for ``kMDItemSupportFileType``.
	struct SupportFileType: NSMetadataAttributeKey {
		public typealias Value = [String]

		public static var attributeKey: String { kMDItemSupportFileType }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.5, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.SupportFileType
{
	/// The shorthand attribute key accessor for ``NSMetadataAttributeKeys/SupportFileType``.
	static var supportFileType: Self {
		Self()
	}
}
