import Foundation

@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemCopyrightKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemcopyrightkey)\.
	enum CopyrightKey: NSMetadataItemAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemCopyrightKey }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataAttribute/CopyrightKey``.
	var copyright: CopyrightKey.Type {
		CopyrightKey.self
	}
}

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == AnyNSMetadataAttributeKey<NSMetadataAttribute.CopyrightKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/CopyrightKey``.
	static var copyright: Self {
		Self()
	}
}
