import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItem {
	/// The attribute key for
	/// [`NSMetadataItemAttributeChangeDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemattributechangedatekey)
	/// .
	enum AttributeChangeDateAttributeKey: NSMetadataItem.AttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemAttributeChangeDateKey }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataItem.AttributeKey where
	Self == NSMetadataItem.AttributeChangeDateAttributeKey
{
	/// The shorthand accessor for ``NSMetadataItem/AttributeChangeDateAttributeKey``.
	static var attributeChangeDate: Self.Type {
		Self.self
	}
}
