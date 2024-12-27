import let Foundation.NSMetadataAttributes.NSMetadataItemFinderCommentKey

@available(macOS 10.9, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`NSMetadataItemFinderCommentKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemfindercommentkey)\.
	struct FinderComment: NSMetadataAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemFinderCommentKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKeys.FinderComment
{
	/// The shorthand attribute key accessor for ``NSMetadataAttributeKeys/FinderComment``.
	static var finderComment: Self {
		Self()
	}
}
