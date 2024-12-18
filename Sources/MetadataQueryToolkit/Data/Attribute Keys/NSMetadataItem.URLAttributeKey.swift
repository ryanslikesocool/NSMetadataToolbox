import Foundation

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataItem {
	/// The attribute key for
	/// [`NSMetadataItemURLKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemurlkey)
	/// .
	enum URLAttributeKey: NSMetadataItem.AttributeKey {
		public typealias Value = URL

		public static var attributeKey: String { NSMetadataItemURLKey }
	}
}

// MARK: - Convenience

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataItem.AttributeKey where
	Self == NSMetadataItem.URLAttributeKey
{
	/// The shorthand accessor for ``NSMetadataItem/URLAttributeKey``.
	static var url: Self.Type {
		Self.self
	}
}
