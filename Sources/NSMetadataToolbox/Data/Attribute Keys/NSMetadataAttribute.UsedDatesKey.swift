import struct Foundation.Date

// TODO: Should this key be available on other platforms?
@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for ``kMDItemUsedDates``.
	enum UsedDatesKey: NSMetadataAttributeKeyProtocol {
		public typealias Value = [Date]

		public static var attributeKey: String { kMDItemUsedDates }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKey<NSMetadataAttribute.UsedDatesKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/UsedDatesKey``.
	static var usedDates: Self {
		Self()
	}
}
