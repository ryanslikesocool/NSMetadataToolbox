import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`NSMetadataItemFinderCommentKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemfindercommentkey)\.
	enum FinderCommentKey: NSMetadataItemAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemFinderCommentKey }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/FinderCommentKey``.
	var finderComment: FinderCommentKey.Type {
		FinderCommentKey.self
	}
}
