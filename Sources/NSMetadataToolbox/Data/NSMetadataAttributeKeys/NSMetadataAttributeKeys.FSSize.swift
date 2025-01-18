import let CoreServices.Metadata.MDItem.kMDItemFSSize

@available(macOS 10.4, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`kMDItemFSSize`]( https://developer.apple.com/documentation/coreservices/kmditemfssize ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/fsSize``
	struct FSSize: NSMetadataAttributeKey {
		// This type is assumed based on light testing.
		// When `Value == CFNumber`, `CFNumberGetType` returns `.sInt64Type`.
		// This could potentially be `Int32` on 32-bit machines, in which case `Value` should be `Int`.
		// `ByteCountFormatStyle` only supports `Int64`.
		public typealias Output = Int64

		public static var attributeKey: String {
			kMDItemFSSize as String
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.FSSize
{
	/// The attribute key for
	/// [`kMDItemFSSize`]( https://developer.apple.com/documentation/coreservices/kmditemfssize ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/FSSize``
	static var fsSize: Self {
		Self()
	}
}
