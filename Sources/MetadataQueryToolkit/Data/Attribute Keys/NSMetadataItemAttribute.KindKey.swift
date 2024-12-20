import Foundation

@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemKindKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemkindkey)\.
	enum KindKey: NSMetadataItemAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemKindKey }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataAttribute/KindKey``.
	var kind: KindKey.Type {
		KindKey.self
	}
}

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == AnyNSMetadataAttributeKey<NSMetadataAttribute.KindKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/KindKey``.
	static var kind: Self {
		Self()
	}
}
