private import let Foundation.NSMetadataAttributes.NSMetadataItemFinderCommentKey

@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemFinderCommentKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemfindercommentkey)\.
	enum FinderCommentKey: NSMetadataAttributeKeyProtocol {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemFinderCommentKey }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKey<NSMetadataAttribute.FinderCommentKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/FinderCommentKey``.
	static var finderComment: Self {
		Self()
	}
}
