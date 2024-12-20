import Foundation

@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemCommentKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemcommentkey)\.
	enum CommentKey: NSMetadataItemAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemCommentKey }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataAttribute/CommentKey``.
	var comment: CommentKey.Type {
		CommentKey.self
	}
}

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == AnyNSMetadataAttributeKey<NSMetadataAttribute.CommentKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/CommentKey``.
	static var comment: Self {
		Self()
	}
}
