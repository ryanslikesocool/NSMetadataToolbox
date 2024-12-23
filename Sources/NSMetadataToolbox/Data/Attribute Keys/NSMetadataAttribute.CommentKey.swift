private import let Foundation.NSMetadataAttributes.NSMetadataItemCommentKey

@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemCommentKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemcommentkey)\.
	enum CommentKey: NSMetadataAttributeKeyProtocol {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemCommentKey }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKey<NSMetadataAttribute.CommentKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/CommentKey``.
	static var comment: Self {
		Self()
	}
}
