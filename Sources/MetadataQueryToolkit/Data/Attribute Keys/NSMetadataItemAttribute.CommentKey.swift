import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`NSMetadataItemCommentKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemcommentkey)\.
	enum CommentKey: NSMetadataItemAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemCommentKey }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/CommentKey``.
	var comment: CommentKey.Type {
		CommentKey.self
	}
}
