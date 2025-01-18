import let CoreServices.Metadata.MDItem.kMDItemTitle

@available(macOS 10.4, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`kMDItemTitle`]( https://developer.apple.com/documentation/coreservices/kmditemtitle ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/title``
	struct Title: NSMetadataAttributeKey {
		public typealias Output = String

		public static var attributeKey: String {
			kMDItemTitle as String
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.Title
{
	/// The attribute key for
	/// [`kMDItemTitle`]( https://developer.apple.com/documentation/coreservices/kmditemtitle ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/Title``
	static var title: Self {
		Self()
	}
}
