import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`NSMetadataItemCFBundleIdentifierKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemcfbundleidentifierkey)\.
	struct CFBundleIdentifierKey: NSMetadataItemAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemCFBundleIdentifierKey }

		public init() { }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/CFBundleIdentifierKey``.
	var cfBundleIdentifier: CFBundleIdentifierKey.Type {
		CFBundleIdentifierKey.self
	}
}

@available(macOS 10.9, *)
public extension NSMetadataItemAttributeProtocol where
	Self == NSMetadataItemAttribute.CFBundleIdentifierKey
{
	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/CFBundleIdentifierKey``.
	static var cfBundleIdentifier: Self {
		Self()
	}
}
