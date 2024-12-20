import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for ``kMDItemLogicalSize``.
	struct LogicalSizeKey: NSMetadataItemAttributeKey {
		// This type is assumed based on light testing.
		// When `Value == CFNumber`, `CFNumberGetType` returns `.sInt64Type`.
		// This could potentially be `Int32` on 32-bit machines, in which case `Value` should be `Int`.
		// `ByteCountFormatStyle` only supports `Int64`.
		public typealias Value = Int64

		public static var attributeKey: String { kMDItemLogicalSize }

		public init() { }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/LogicalSizeKey``.
	var logicalSize: LogicalSizeKey.Type {
		LogicalSizeKey.self
	}
}

@available(macOS 10.9, *)
public extension NSMetadataItemAttributeProtocol where
	Self == NSMetadataItemAttribute.LogicalSizeKey
{
	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/LogicalSizeKey``.
	static var logicalSize: Self {
		Self()
	}
}
