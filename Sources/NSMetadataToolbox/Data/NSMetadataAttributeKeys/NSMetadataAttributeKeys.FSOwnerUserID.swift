import let CoreServices.Metadata.MDItem.kMDItemFSOwnerUserID

@available(macOS 10.4, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`kMDItemFSOwnerUserID`](https://developer.apple.com/documentation/coreservices/kmditemfsowneruserid)\.
	struct FSOwnerUserID: NSMetadataAttributeKey {
		// This type is assumed based on light testing.
		// When `Value == CFNumber`, `CFNumberGetType` returns `.sInt64Type`.
		// This could potentially be `Int32` on 32-bit machines, in which case `Value` should be `Int`.
		public typealias Value = Int64

		public static var attributeKey: String { kMDItemFSOwnerUserID as String }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKeys.FSOwnerUserID
{
	/// The shorthand attribute key accessor for ``NSMetadataAttributeKeys/FSOwnerUserID``.
	static var fsOwnerUserID: Self {
		Self()
	}
}
