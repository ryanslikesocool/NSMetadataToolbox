import let Foundation.NSMetadataAttributes.NSMetadataItemCommentKey

@available(macOS 10.9, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`NSMetadataItemCommentKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemcommentkey)\.
	struct Comment: NSMetadataAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemCommentKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.Comment
{
	/// The shorthand attribute key accessor for ``NSMetadataAttributeKeys/Comment``.
	static var comment: Self {
		Self()
	}
}
