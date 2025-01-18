import let CoreServices.Metadata.MDItem.kMDItemComment

@available(macOS 10.4, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`kMDItemComment`]( https://developer.apple.com/documentation/coreservices/kmditemcomment ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/comment``
	struct Comment: NSMetadataAttributeKey {
		public typealias Output = String

		public static var attributeKey: String {
			kMDItemComment as String
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.Comment
{
	/// The attribute key for
	/// [`kMDItemComment`]( https://developer.apple.com/documentation/coreservices/kmditemcomment ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/Comment``
	static var comment: Self {
		Self()
	}
}
