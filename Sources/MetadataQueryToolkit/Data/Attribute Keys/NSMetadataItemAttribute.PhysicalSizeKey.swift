import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for ``kMDItemPhysicalSize``.
	struct PhysicalSizeKey: NSMetadataItemAttributeKey {
		// This type is assumed based on light testing.
		// When `Value == CFNumber`, `CFNumberGetType` returns `.sInt64Type`.
		// This could potentially be `Int32` on 32-bit machines, in which case `Value` should be `Int`.
		// `ByteCountFormatStyle` only supports `Int64`.
		public typealias Value = Int64

		public static var attributeKey: String { kMDItemPhysicalSize }

		public init() { }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/PhysicalSizeKey``.
	var physicalSize: PhysicalSizeKey.Type {
		PhysicalSizeKey.self
	}
}

@available(macOS 10.9, *)
public extension NSMetadataItemAttributeProtocol where
	Self == NSMetadataItemAttribute.PhysicalSizeKey
{
	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/PhysicalSizeKey``.
	static var physicalSize: Self {
		Self()
	}
}
