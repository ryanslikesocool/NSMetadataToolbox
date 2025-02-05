import let CoreServices.Metadata.MDItem.kMDItemFSOwnerGroupID

@available(macOS 10.4, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`kMDItemFSOwnerGroupID`]( https://developer.apple.com/documentation/coreservices/kmditemfsownergroupid ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/fsOwnerGroupID``
	struct FSOwnerGroupID: NSMetadataAttributeKey {
		// This type is assumed based on light testing.
		// When `Value == CFNumber`, `CFNumberGetType` returns `.sInt64Type`.
		// This could potentially be `Int32` on 32-bit machines, in which case `Value` should be `Int`.
		public typealias Output = Int64

		public static var attributeKey: String {
			kMDItemFSOwnerGroupID as String
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.FSOwnerGroupID
{
	/// The attribute key for
	/// [`kMDItemFSOwnerGroupID`]( https://developer.apple.com/documentation/coreservices/kmditemfsownergroupid ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/FSOwnerGroupID``
	static var fsOwnerGroupID: Self {
		Self()
	}
}
