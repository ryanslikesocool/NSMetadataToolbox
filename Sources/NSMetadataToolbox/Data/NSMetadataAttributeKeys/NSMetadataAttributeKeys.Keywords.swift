import let CoreServices.Metadata.MDItem.kMDItemKeywords

@available(macOS 10.4, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`kMDItemKeywords`]( https://developer.apple.com/documentation/coreservices/kmditemkeywords ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/keywords``
	struct Keywords: NSMetadataAttributeKey {
		public typealias Output = [String]

		public static var attributeKey: String {
			kMDItemKeywords as String
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.Keywords
{
	/// The attribute key for
	/// [`kMDItemKeywords`]( https://developer.apple.com/documentation/coreservices/kmditemkeywords ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/Keywords``
	static var keywords: Self {
		Self()
	}
}
