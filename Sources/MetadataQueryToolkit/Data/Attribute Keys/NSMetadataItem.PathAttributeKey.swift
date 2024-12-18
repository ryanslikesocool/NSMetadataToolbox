import Foundation

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataItem {
	/// The attribute key for
	/// [`NSMetadataItemPathKey`](https://developer.apple.com/documentation/foundation/nsmetadataitempathkey)
	/// .
	enum PathAttributeKey: NSMetadataItem.AttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemPathKey }
	}
}

// MARK: - Convenience

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataItem.AttributeKey where
	Self == NSMetadataItem.PathAttributeKey
{
	/// The shorthand accessor for ``NSMetadataItem/PathAttributeKey``.
	static var path: Self.Type {
		Self.self
	}
}
