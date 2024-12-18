import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`NSMetadataItemCopyrightKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemcopyrightkey)\.
	enum CopyrightKey: NSMetadataItemAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemCopyrightKey }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/CopyrightKey``.
	var copyright: CopyrightKey.Type {
		CopyrightKey.self
	}
}