@available(macOS 10.9, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for ``kMDItemPhysicalSize``.
	/// 
	/// ## See Also
	/// - ``NSMetadataAttributeObject/physicalSize``
	struct PhysicalSize: NSMetadataAttributeKey {
		// This type is assumed based on light testing.
		// When `Value == CFNumber`, `CFNumberGetType` returns `.sInt64Type`.
		// This could potentially be `Int32` on 32-bit machines, in which case `Value` should be `Int`.
		// `ByteCountFormatStyle` only supports `Int64`.
		public typealias Output = Int64

		public static var attributeKey: String { kMDItemPhysicalSize }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.PhysicalSize
{
	/// The attribute key for ``kMDItemPhysicalSize``.
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/PhysicalSize``
	static var physicalSize: Self {
		Self()
	}
}
