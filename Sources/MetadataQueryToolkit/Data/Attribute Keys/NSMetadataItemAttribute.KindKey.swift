import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`NSMetadataItemKindKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemkindkey)\.
	struct KindKey: NSMetadataItemAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemKindKey }

		public init() { }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/KindKey``.
	var kind: KindKey.Type {
		KindKey.self
	}
}

@available(macOS 10.9, *)
public extension NSMetadataItemAttributeProtocol where
	Self == NSMetadataItemAttribute.KindKey
{
	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/KindKey``.
	static var kind: Self {
		Self()
	}
}
