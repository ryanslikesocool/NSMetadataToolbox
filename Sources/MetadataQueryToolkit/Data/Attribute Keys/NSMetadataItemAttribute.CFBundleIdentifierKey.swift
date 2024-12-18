import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`NSMetadataItemCFBundleIdentifierKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemcfbundleidentifierkey)\.
	enum CFBundleIdentifierKey: NSMetadataItemAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemCFBundleIdentifierKey }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/CFBundleIdentifierKey``.
	var cfBundleIdentifier: CFBundleIdentifierKey.Type {
		CFBundleIdentifierKey.self
	}
}