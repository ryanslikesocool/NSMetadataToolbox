import let Foundation.NSMetadataAttributes.NSMetadataItemKeywordsKey

@available(macOS 10.9, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`NSMetadataItemKeywordsKey`]( https://developer.apple.com/documentation/foundation/nsmetadataitemkeywordskey ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/keywords``
	struct Keywords: NSMetadataAttributeKey {
		public typealias Output = String

		public static var attributeKey: String {
			NSMetadataItemKeywordsKey
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.Keywords
{
	/// The attribute key for
	/// [`NSMetadataItemKeywordsKey`]( https://developer.apple.com/documentation/foundation/nsmetadataitemkeywordskey ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/Keywords``
	static var keywords: Self {
		Self()
	}
}
