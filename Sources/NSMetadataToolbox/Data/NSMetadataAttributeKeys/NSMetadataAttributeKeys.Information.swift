import let CoreServices.Metadata.MDItem.kMDItemInformation

@available(macOS 10.5, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`kMDItemInformation`](https://developer.apple.com/documentation/coreservices/kmditeminformation)\.
	struct Information: NSMetadataAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { kMDItemInformation as String }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.5, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.Information
{
	/// The shorthand attribute key accessor for ``NSMetadataAttributeKeys/Information``.
	static var information: Self {
		Self()
	}
}
