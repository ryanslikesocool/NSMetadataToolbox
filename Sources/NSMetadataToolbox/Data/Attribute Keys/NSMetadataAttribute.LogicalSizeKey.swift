@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for ``kMDItemLogicalSize``.
	struct LogicalSizeKey: NSMetadataAttributeKey {
		// This type is assumed based on light testing.
		// When `Value == CFNumber`, `CFNumberGetType` returns `.sInt64Type`.
		// This could potentially be `Int32` on 32-bit machines, in which case `Value` should be `Int`.
		// `ByteCountFormatStyle` only supports `Int64`.
		public typealias Value = Int64

		public static var attributeKey: String { kMDItemLogicalSize }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttribute.LogicalSizeKey
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/LogicalSizeKey``.
	static var logicalSize: Self {
		Self()
	}
}
