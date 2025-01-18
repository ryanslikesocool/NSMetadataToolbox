import let CoreServices.Metadata.MDItem.kMDItemDisplayName

@available(macOS 10.4, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`kMDItemDisplayName`]( https://developer.apple.com/documentation/coreservices/kmditemdisplayname ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/displayName``
	struct DisplayName: NSMetadataAttributeKey {
		public typealias Output = String

		public static var attributeKey: String {
			kMDItemDisplayName as String
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.DisplayName
{
	/// The attribute key for
	/// [`kMDItemDisplayName`]( https://developer.apple.com/documentation/coreservices/kmditemdisplayname ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/DisplayName``
	static var displayName: Self {
		Self()
	}
}
