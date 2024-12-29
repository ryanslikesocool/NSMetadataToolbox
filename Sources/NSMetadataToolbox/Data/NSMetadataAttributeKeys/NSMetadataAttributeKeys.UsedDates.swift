import struct Foundation.Date

@available(macOS 10.9, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for ``kMDItemUsedDates``.
	///
	/// ## See Also
	/// - ``NSMetadataAttributeObject/usedDates``
	struct UsedDates: NSMetadataAttributeKey {
		public typealias Output = [Date]

		public static var attributeKey: String { kMDItemUsedDates }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.UsedDates
{
	/// The attribute key for ``kMDItemUsedDates``.
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/UsedDates``
	static var usedDates: Self {
		Self()
	}
}
