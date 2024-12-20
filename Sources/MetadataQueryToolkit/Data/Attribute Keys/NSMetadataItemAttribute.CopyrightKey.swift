import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`NSMetadataItemCopyrightKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemcopyrightkey)\.
	struct CopyrightKey: NSMetadataItemAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemCopyrightKey }

		public init() { }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/CopyrightKey``.
	var copyright: CopyrightKey.Type {
		CopyrightKey.self
	}
}

@available(macOS 10.9, *)
public extension NSMetadataItemAttributeProtocol where
	Self == NSMetadataItemAttribute.CopyrightKey
{
	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/CopyrightKey``.
	static var copyright: Self {
		Self()
	}
}
