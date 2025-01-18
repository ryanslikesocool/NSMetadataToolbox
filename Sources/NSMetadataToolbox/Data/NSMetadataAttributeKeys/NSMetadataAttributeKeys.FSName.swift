import let CoreServices.Metadata.MDItem.kMDItemFSName

@available(macOS 10.4, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`kMDItemFSName`]( https://developer.apple.com/documentation/coreservices/kmditemfsname ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/fsName``
	struct FSName: NSMetadataAttributeKey {
		public typealias Output = String

		public static var attributeKey: String {
			kMDItemFSName as String
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.FSName
{
	/// The attribute key for
	/// [`kMDItemFSName`]( https://developer.apple.com/documentation/coreservices/kmditemfsname ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/FSName``
	static var fsName: Self {
		Self()
	}
}
