import let CoreServices.Metadata.MDItem.kMDItemFSNodeCount

@available(macOS 10.4, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`kMDItemFSNodeCount`]( https://developer.apple.com/documentation/coreservices/kmditemfsnodecount ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/fsNodeCount``
	struct FSNodeCount: NSMetadataAttributeKey {
		// This type is assumed based on light testing.
		// When `Value == CFNumber`, `CFNumberGetType` returns `.sInt64Type`.
		// This could potentially be `Int32` on 32-bit machines, in which case `Value` should be `Int`.
		public typealias Output = Int64

		public static var attributeKey: String {
			kMDItemFSNodeCount as String
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.FSNodeCount
{
	/// The attribute key for
	/// [`kMDItemFSNodeCount`]( https://developer.apple.com/documentation/coreservices/kmditemfsnodecount ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/FSNodeCount``
	static var fsNodeCount: Self {
		Self()
	}
}
