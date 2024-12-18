import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItem {
	/// The attribute key for
	/// [`NSMetadataItemCFBundleIdentifierKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemcfbundleidentifierkey)
	/// .
	enum CFBundleIdentifierAttributeKey: NSMetadataItem.AttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemCFBundleIdentifierKey }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataItem.AttributeKey where
	Self == NSMetadataItem.CFBundleIdentifierAttributeKey
{
	/// The shorthand accessor for ``NSMetadataItem/CFBundleIdentifierAttributeKey``.
	static var cfBundleIdentifier: Self.Type {
		Self.self
	}
}
