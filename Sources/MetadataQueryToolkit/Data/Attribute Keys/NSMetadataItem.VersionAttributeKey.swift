import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItem {
	/// The attribute key for
	/// [`NSMetadataItemVersionKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemversionkey)
	/// .
	enum VersionAttributeKey: NSMetadataItem.AttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemVersionKey }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataItem.AttributeKey where
	Self == NSMetadataItem.VersionAttributeKey
{
	/// The shorthand accessor for ``NSMetadataItem/VersionAttributeKey``.
	static var version: Self.Type {
		Self.self
	}
}
