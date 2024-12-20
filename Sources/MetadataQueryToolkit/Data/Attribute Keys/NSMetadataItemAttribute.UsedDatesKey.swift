import Foundation

// TODO: Should this key be available on other platforms?
@available(macOS 10.9, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for ``kMDItemUsedDates``.
	struct UsedDatesKey: NSMetadataItemAttributeKey {
		public typealias Value = [Date]

		public static var attributeKey: String { kMDItemUsedDates }

		public init() { }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/UsedDatesKey``.
	var usedDates: UsedDatesKey.Type {
		UsedDatesKey.self
	}
}

@available(macOS 10.9, *)
public extension NSMetadataItemAttributeProtocol where
	Self == NSMetadataItemAttribute.UsedDatesKey
{
	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/UsedDatesKey``.
	static var usedDates: Self {
		Self()
	}
}
