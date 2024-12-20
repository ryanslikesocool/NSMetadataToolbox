import Foundation

@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemVersionKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemversionkey)\.
	enum VersionKey: NSMetadataItemAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemVersionKey }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataAttribute/VersionKey``.
	var version: VersionKey.Type {
		VersionKey.self
	}
}

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == AnyNSMetadataAttributeKey<NSMetadataAttribute.VersionKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/VersionKey``.
	static var version: Self {
		Self()
	}
}
