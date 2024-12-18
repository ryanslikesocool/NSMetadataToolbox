import Foundation

// TODO: Should this key be available on other platforms?
@available(macOS 10.9, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for ``kMDItemUsedDates``.
	enum UsedDatesKey: NSMetadataItemAttributeKey {
		public typealias Value = [Date]

		public static var attributeKey: String { kMDItemUsedDates }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/UsedDatesKey``.
	var usedDates: UsedDatesKey.Type {
		UsedDatesKey.self
	}
}
