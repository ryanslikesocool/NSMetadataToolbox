// TODO: Should this key be available on other platforms?
@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for ``kMDItemUseCount``.
	enum UseCountKey: NSMetadataItemAttributeKey {
		// This type is assumed based on light testing.
		// When `Value == CFNumber`, `CFNumberGetType` returns `.sInt64Type`.
		// This could potentially be `Int32` on 32-bit machines, in which case `Value` should be `Int`.
		public typealias Value = Int64

		public static var attributeKey: String { kMDItemUseCount }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataAttribute/UseCountKey``.
	var useCount: UseCountKey.Type {
		UseCountKey.self
	}
}

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == AnyNSMetadataAttributeKey<NSMetadataAttribute.UseCountKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/UseCountKey``.
	static var useCount: Self {
		Self()
	}
}
