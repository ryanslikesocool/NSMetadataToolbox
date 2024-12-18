import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItem {
	/// The attribute key for
	/// [`NSMetadataItemLastUsedDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemlastuseddatekey)
	/// .
	enum LastUsedDateAttributeKey: NSMetadataItem.AttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemLastUsedDateKey }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataItem.AttributeKey where
	Self == NSMetadataItem.LastUsedDateAttributeKey
{
	/// The shorthand accessor for ``NSMetadataItem/LastUsedDateAttributeKey``.
	static var lastUsedDate: Self.Type {
		Self.self
	}
}
