import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItem {
	/// The attribute key for
	/// [`NSMetadataItemDateAddedKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemdateaddedkey)
	/// .
	enum DateAddedAttributeKey: NSMetadataItem.AttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemDateAddedKey }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataItem.AttributeKey where
	Self == NSMetadataItem.DateAddedAttributeKey
{
	/// The shorthand accessor for ``NSMetadataItem/DateAddedAttributeKey``.
	static var dateAdded: Self.Type {
		Self.self
	}
}
