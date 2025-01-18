import let CoreServices.Metadata.MDItem.kMDItemFinderComment

@available(macOS 10.4, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`kMDItemFinderComment`]( https://developer.apple.com/documentation/coreservices/kmditemfindercomment ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/finderComment``
	struct FinderComment: NSMetadataAttributeKey {
		public typealias Output = String

		public static var attributeKey: String {
			kMDItemFinderComment as String
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.FinderComment
{
	/// The attribute key for
	/// [`kMDItemFinderComment`]( https://developer.apple.com/documentation/coreservices/kmditemfindercomment ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/FinderComment``
	static var finderComment: Self {
		Self()
	}
}
