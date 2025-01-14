import let CoreServices.Metadata.MDItem.kMDItemInformation

@available(macOS 10.5, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`kMDItemInformation`]( https://developer.apple.com/documentation/coreservices/kmditeminformation ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/information``
	struct Information: NSMetadataAttributeKey {
		public typealias Output = String

		public static var attributeKey: String {
			kMDItemInformation as String
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.5, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.Information
{
	/// The attribute key for
	/// [`kMDItemInformation`]( https://developer.apple.com/documentation/coreservices/kmditeminformation ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/Information``
	static var information: Self {
		Self()
	}
}
