import Foundation

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataItem {
	/// The attribute key for
	/// [`NSMetadataItemFSSizeKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemfssizekey)
	/// .
	enum FSSizeAttributeKey: NSMetadataItem.AttributeKey {
		public typealias Value = NSNumber

		public static var attributeKey: String { NSMetadataItemFSSizeKey }
	}
}

// MARK: - Convenience

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataItem.AttributeKey where
	Self == NSMetadataItem.FSSizeAttributeKey
{
	/// The shorthand accessor for ``NSMetadataItem/FSSizeAttributeKey``.
	static var fsSize: Self.Type {
		Self.self
	}
}
