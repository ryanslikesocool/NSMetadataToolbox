import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItem {
	/// The attribute key for
	/// [`NSMetadataItemContentModificationDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemcontentmodificationdatekey)
	/// .
	enum ContentModificationDateAttributeKey: NSMetadataItem.AttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemContentModificationDateKey }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataItem.AttributeKey where
	Self == NSMetadataItem.ContentModificationDateAttributeKey
{
	/// The shorthand accessor for ``NSMetadataItem/ContentModificationDateAttributeKey``.
	static var contentModificationDate: Self.Type {
		Self.self
	}
}
