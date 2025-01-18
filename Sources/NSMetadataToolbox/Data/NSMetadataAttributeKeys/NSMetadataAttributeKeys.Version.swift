import let CoreServices.Metadata.MDItem.kMDItemVersion

@available(macOS 10.4, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`kMDItemVersion`]( https://developer.apple.com/documentation/coreservices/kmditemversion ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/version``
	struct Version: NSMetadataAttributeKey {
		public typealias Output = String

		public static var attributeKey: String {
			kMDItemVersion as String
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.Version
{
	/// The attribute key for
	/// [`kMDItemVersion`]( https://developer.apple.com/documentation/coreservices/kmditemversion ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/Version``
	static var version: Self {
		Self()
	}
}
