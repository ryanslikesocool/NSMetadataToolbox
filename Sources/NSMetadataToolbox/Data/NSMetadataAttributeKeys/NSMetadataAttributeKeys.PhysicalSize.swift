@available(macOS 10.9, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for ``kMDItemPhysicalSize``.
	struct PhysicalSize: NSMetadataAttributeKey {
		// This type is assumed based on light testing.
		// When `Value == CFNumber`, `CFNumberGetType` returns `.sInt64Type`.
		// This could potentially be `Int32` on 32-bit machines, in which case `Value` should be `Int`.
		// `ByteCountFormatStyle` only supports `Int64`.
		public typealias Value = Int64

		public static var attributeKey: String { kMDItemPhysicalSize }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.PhysicalSize
{
	/// The shorthand attribute key accessor for ``NSMetadataAttributeKeys/PhysicalSize``.
	static var physicalSize: Self {
		Self()
	}
}
