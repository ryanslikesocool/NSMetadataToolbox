import struct Foundation.Date

// TODO: Should this key be available on other platforms?
@available(macOS 10.9, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for ``kMDItemUsedDates``.
	struct UsedDates: NSMetadataAttributeKey {
		public typealias Value = [Date]

		public static var attributeKey: String { kMDItemUsedDates }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.UsedDates
{
	/// The shorthand attribute key accessor for ``NSMetadataAttributeKeys/UsedDates``.
	static var usedDates: Self {
		Self()
	}
}
