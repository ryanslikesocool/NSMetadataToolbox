import let CoreServices.Metadata.MDItem.kMDItemFSLabel

@available(macOS 10.4, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`kMDItemFSLabel`]( https://developer.apple.com/documentation/coreservices/kmditemfslabel ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/fsLabel``
	struct FSLabel: NSMetadataAttributeKey {
		// This type is assumed based on light testing.
		// When `Value == CFNumber`, `CFNumberGetType` returns `.sInt64Type`.
		// This could potentially be `Int32` on 32-bit machines, in which case `Value` should be `Int`.
		public typealias Output = Int64

		public static var attributeKey: String {
			kMDItemFSLabel as String
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.FSLabel
{
	/// The attribute key for
	/// [`kMDItemFSLabel`]( https://developer.apple.com/documentation/coreservices/kmditemfslabel ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/FSLabel``
	static var fsLabel: Self {
		Self()
	}
}
