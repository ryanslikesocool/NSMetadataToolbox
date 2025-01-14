@available(macOS 10.9, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for ``kMDItemUseCount``.
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/useCount``
	struct UseCount: NSMetadataAttributeKey {
		// This type is assumed based on light testing.
		// When `Value == CFNumber`, `CFNumberGetType` returns `.sInt64Type`.
		// This could potentially be `Int32` on 32-bit machines, in which case `Value` should be `Int`.
		public typealias Output = Int64

		public static var attributeKey: String {
			kMDItemUseCount
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.UseCount
{
	/// The attribute key for ``kMDItemUseCount``.
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/UseCount``
	static var useCount: Self {
		Self()
	}
}
