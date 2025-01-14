import let CoreServices.Metadata.MDItem.kMDItemFSHasCustomIcon

@available(macOS 10.4, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`kMDItemFSHasCustomIcon`]( https://developer.apple.com/documentation/coreservices/kmditemfshascustomicon ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/fsHasCustomIcon``
	struct FSHasCustomIcon: NSMetadataAttributeKey {
		public typealias Output = Bool

		public static var attributeKey: String {
			kMDItemFSHasCustomIcon as String
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.FSHasCustomIcon
{
	/// The attribute key for
	/// [`kMDItemFSHasCustomIcon`]( https://developer.apple.com/documentation/coreservices/kmditemfshascustomicon ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/FSHasCustomIcon``
	static var fsHasCustomIcon: Self {
		Self()
	}
}
