private import let Foundation.NSMetadataAttributes.NSMetadataItemCommentKey

@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemCommentKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemcommentkey)\.
	struct CommentKey: NSMetadataAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemCommentKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttribute.CommentKey
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/CommentKey``.
	static var comment: Self {
		Self()
	}
}
