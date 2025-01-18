import let CoreServices.Metadata.MDItem.kMDItemCopyright

@available(macOS 10.4, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`kMDItemCopyright`]( https://developer.apple.com/documentation/coreservices/kmditemcopyright ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/copyright``
	struct Copyright: NSMetadataAttributeKey {
		public typealias Output = String

		public static var attributeKey: String {
			kMDItemCopyright as String
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.Copyright
{
	/// The attribute key for
	/// [`kMDItemCopyright`]( https://developer.apple.com/documentation/coreservices/kmditemcopyright ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/Copyright``
	static var copyright: Self {
		Self()
	}
}
