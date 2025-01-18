import let CoreServices.Metadata.MDItem.kMDItemDescription

@available(macOS 10.4, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`kMDItemDescription`]( https://developer.apple.com/documentation/coreservices/kmditemdescription ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/description``
	struct Description: NSMetadataAttributeKey {
		public typealias Output = String

		public static var attributeKey: String {
			kMDItemDescription as String
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.Description
{
	/// The attribute key for
	/// [`kMDItemDescription`]( https://developer.apple.com/documentation/coreservices/kmditemdescription ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/Description``
	static var description: Self {
		Self()
	}
}
