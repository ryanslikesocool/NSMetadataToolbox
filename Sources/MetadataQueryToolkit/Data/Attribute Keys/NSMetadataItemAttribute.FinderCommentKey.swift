import Foundation

@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemFinderCommentKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemfindercommentkey)\.
	enum FinderCommentKey: NSMetadataItemAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemFinderCommentKey }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataAttribute/FinderCommentKey``.
	var finderComment: FinderCommentKey.Type {
		FinderCommentKey.self
	}
}

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == AnyNSMetadataAttributeKey<NSMetadataAttribute.FinderCommentKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/FinderCommentKey``.
	static var finderComment: Self {
		Self()
	}
}
