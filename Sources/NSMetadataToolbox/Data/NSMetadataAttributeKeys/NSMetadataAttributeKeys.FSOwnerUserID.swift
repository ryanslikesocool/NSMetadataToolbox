import let CoreServices.Metadata.MDItem.kMDItemFSOwnerUserID

@available(macOS 10.4, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`kMDItemFSOwnerUserID`]( https://developer.apple.com/documentation/coreservices/kmditemfsowneruserid ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/fsOwnerUserID``
	struct FSOwnerUserID: NSMetadataAttributeKey {
		// This type is assumed based on light testing.
		// When `Value == CFNumber`, `CFNumberGetType` returns `.sInt64Type`.
		// This could potentially be `Int32` on 32-bit machines, in which case `Value` should be `Int`.
		public typealias Output = Int64

		public static var attributeKey: String {
			kMDItemFSOwnerUserID as String
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.FSOwnerUserID
{
	/// The attribute key for
	/// [`kMDItemFSOwnerUserID`]( https://developer.apple.com/documentation/coreservices/kmditemfsowneruserid ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/FSOwnerUserID``
	static var fsOwnerUserID: Self {
		Self()
	}
}
