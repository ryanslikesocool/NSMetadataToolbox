import let Foundation.NSMetadataAttributes.NSMetadataItemFinderCommentKey

@available(macOS 10.9, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`NSMetadataItemFinderCommentKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemfindercommentkey)\.
	///
	/// ## See Also
	/// - ``NSMetadataAttributeObject/finderComment``
	struct FinderComment: NSMetadataAttributeKey {
		public typealias Output = String

		public static var attributeKey: String { NSMetadataItemFinderCommentKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.FinderComment
{
	/// The attribute key for
	/// [`NSMetadataItemFinderCommentKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemfindercommentkey)\.
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/FinderComment``
	static var finderComment: Self {
		Self()
	}
}
