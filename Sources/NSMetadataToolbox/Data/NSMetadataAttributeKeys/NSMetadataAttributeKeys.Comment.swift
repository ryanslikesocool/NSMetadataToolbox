import let Foundation.NSMetadataAttributes.NSMetadataItemCommentKey

@available(macOS 10.9, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`NSMetadataItemCommentKey`]( https://developer.apple.com/documentation/foundation/nsmetadataitemcommentkey ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/comment``
	struct Comment: NSMetadataAttributeKey {
		public typealias Output = String

		public static var attributeKey: String {
			NSMetadataItemCommentKey
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.Comment
{
	/// The attribute key for
	/// [`NSMetadataItemCommentKey`]( https://developer.apple.com/documentation/foundation/nsmetadataitemcommentkey ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/Comment``
	static var comment: Self {
		Self()
	}
}
