import let CoreServices.Metadata.MDItem.kMDItemCFBundleIdentifier

@available(macOS 10.5, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`kMDItemCFBundleIdentifier`]( https://developer.apple.com/documentation/coreservices/kmditemcfbundleidentifier ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/cfBundleIdentifier``
	struct CFBundleIdentifier: NSMetadataAttributeKey {
		public typealias Output = String

		public static var attributeKey: String {
			kMDItemCFBundleIdentifier as String
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.5, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.CFBundleIdentifier
{
	/// The attribute key for
	/// [`kMDItemCFBundleIdentifier`]( https://developer.apple.com/documentation/coreservices/kmditemcfbundleidentifier ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/CFBundleIdentifier``
	static var cfBundleIdentifier: Self {
		Self()
	}
}
