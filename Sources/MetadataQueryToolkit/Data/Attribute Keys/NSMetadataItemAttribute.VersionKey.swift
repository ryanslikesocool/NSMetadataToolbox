import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`NSMetadataItemVersionKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemversionkey)\.
	enum VersionKey: NSMetadataItemAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemVersionKey }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/VersionKey``.
	var version: VersionKey.Type {
		VersionKey.self
	}
}