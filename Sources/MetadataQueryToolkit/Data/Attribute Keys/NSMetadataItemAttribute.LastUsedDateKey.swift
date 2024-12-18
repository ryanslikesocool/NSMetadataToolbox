import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`NSMetadataItemLastUsedDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemlastuseddatekey)\.
	enum LastUsedDateKey: NSMetadataItemAttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemLastUsedDateKey }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/LastUsedDateKey``.
	var lastUsedDate: LastUsedDateKey.Type {
		LastUsedDateKey.self
	}
}