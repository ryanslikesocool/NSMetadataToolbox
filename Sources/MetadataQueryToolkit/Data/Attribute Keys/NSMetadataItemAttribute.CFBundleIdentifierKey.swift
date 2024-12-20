import Foundation

@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemCFBundleIdentifierKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemcfbundleidentifierkey)\.
	enum CFBundleIdentifierKey: NSMetadataItemAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemCFBundleIdentifierKey }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataAttribute/CFBundleIdentifierKey``.
	var cfBundleIdentifier: CFBundleIdentifierKey.Type {
		CFBundleIdentifierKey.self
	}
}

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == AnyNSMetadataAttributeKey<NSMetadataAttribute.CFBundleIdentifierKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/CFBundleIdentifierKey``.
	static var cfBundleIdentifier: Self {
		Self()
	}
}
