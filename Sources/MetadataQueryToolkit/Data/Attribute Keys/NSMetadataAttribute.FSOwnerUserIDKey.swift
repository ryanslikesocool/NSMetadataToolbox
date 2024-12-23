import class CoreFoundation.CFNumber
private import let CoreServices.Metadata.MDItem.kMDItemFSOwnerUserID

@available(macOS 10.4, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`kMDItemFSOwnerUserID`](https://developer.apple.com/documentation/coreservices/kmditemfsowneruserid)\.
	enum FSOwnerUserIDKey: NSMetadataAttributeKeyProtocol {
		// This type is assumed based on light testing.
		// When `Value == CFNumber`, `CFNumberGetType` returns `.sInt64Type`.
		// This could potentially be `Int32` on 32-bit machines, in which case `Value` should be `Int`.
		public typealias Value = Int64

		public static var attributeKey: String { kMDItemFSOwnerUserID as String }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKey<NSMetadataAttribute.FSOwnerUserIDKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/FSOwnerUserIDKey``.
	static var fsOwnerUserID: Self {
		Self()
	}
}
