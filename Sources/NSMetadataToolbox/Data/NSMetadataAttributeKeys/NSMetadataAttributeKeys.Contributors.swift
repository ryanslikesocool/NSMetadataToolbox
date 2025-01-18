import let CoreServices.Metadata.MDItem.kMDItemContributors

@available(macOS 10.4, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`kMDItemContributors`]( https://developer.apple.com/documentation/coreservices/kmditemcontributors ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/contributors``
	struct Contributors: NSMetadataAttributeKey {
		public typealias Output = [String]

		public static var attributeKey: String {
			kMDItemContributors as String
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.Contributors
{
	/// The attribute key for
	/// [`kMDItemContributors`]( https://developer.apple.com/documentation/coreservices/kmditemcontributors ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/Contributors``
	static var contributors: Self {
		Self()
	}
}
