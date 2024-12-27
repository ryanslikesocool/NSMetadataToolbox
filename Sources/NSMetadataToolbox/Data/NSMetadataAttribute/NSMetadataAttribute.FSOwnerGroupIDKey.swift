import let CoreServices.Metadata.MDItem.kMDItemFSOwnerGroupID

@available(macOS 10.4, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`kMDItemFSOwnerGroupID`](https://developer.apple.com/documentation/coreservices/kmditemfsownergroupid)\.
	struct FSOwnerGroupIDKey: NSMetadataAttributeKey {
		// This type is assumed based on light testing.
		// When `Value == CFNumber`, `CFNumberGetType` returns `.sInt64Type`.
		// This could potentially be `Int32` on 32-bit machines, in which case `Value` should be `Int`.
		public typealias Value = Int64

		public static var attributeKey: String { kMDItemFSOwnerGroupID as String }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttribute.FSOwnerGroupIDKey
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/FSOwnerGroupIDKey``.
	static var fsOwnerGroupID: Self {
		Self()
	}
}
