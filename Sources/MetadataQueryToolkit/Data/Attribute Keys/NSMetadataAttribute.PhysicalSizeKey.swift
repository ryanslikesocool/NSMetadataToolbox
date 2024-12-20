@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for ``kMDItemPhysicalSize``.
	enum PhysicalSizeKey: NSMetadataAttributeKeyProtocol {
		// This type is assumed based on light testing.
		// When `Value == CFNumber`, `CFNumberGetType` returns `.sInt64Type`.
		// This could potentially be `Int32` on 32-bit machines, in which case `Value` should be `Int`.
		// `ByteCountFormatStyle` only supports `Int64`.
		public typealias Value = Int64

		public static var attributeKey: String { kMDItemPhysicalSize }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKey<NSMetadataAttribute.PhysicalSizeKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/PhysicalSizeKey``.
	static var physicalSize: Self {
		Self()
	}
}
