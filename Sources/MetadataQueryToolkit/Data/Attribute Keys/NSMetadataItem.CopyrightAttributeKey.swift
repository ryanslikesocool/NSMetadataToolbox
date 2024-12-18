import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItem {
	/// The attribute key for
	/// [`NSMetadataItemCopyrightKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemcopyrightkey)
	/// .
	enum CopyrightAttributeKey: NSMetadataItem.AttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemCopyrightKey }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataItem.AttributeKey where
	Self == NSMetadataItem.CopyrightAttributeKey
{
	/// The shorthand accessor for ``NSMetadataItem/CopyrightAttributeKey``.
	static var copyright: Self.Type {
		Self.self
	}
}
