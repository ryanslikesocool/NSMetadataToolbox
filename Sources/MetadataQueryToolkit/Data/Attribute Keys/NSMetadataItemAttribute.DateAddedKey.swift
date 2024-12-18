import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`NSMetadataItemDateAddedKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemdateaddedkey)\.
	enum DateAddedKey: NSMetadataItemAttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemDateAddedKey }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/DateAddedKey``.
	var dateAdded: DateAddedKey.Type {
		DateAddedKey.self
	}
}