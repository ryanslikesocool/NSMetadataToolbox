import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`NSMetadataItemVersionKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemversionkey)\.
	struct VersionKey: NSMetadataItemAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemVersionKey }

		public init() { }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/VersionKey``.
	var version: VersionKey.Type {
		VersionKey.self
	}
}

@available(macOS 10.9, *)
public extension NSMetadataItemAttributeProtocol where
	Self == NSMetadataItemAttribute.VersionKey
{
	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/VersionKey``.
	static var version: Self {
		Self()
	}
}
