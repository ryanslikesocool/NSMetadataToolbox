import Foundation

@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemDescriptionKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemdescriptionkey)\.
	enum DescriptionKey: NSMetadataItemAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemDescriptionKey }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataAttribute/DescriptionKey``.
	var description: DescriptionKey.Type {
		DescriptionKey.self
	}
}

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == AnyNSMetadataAttributeKey<NSMetadataAttribute.DescriptionKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/DescriptionKey``.
	static var description: Self {
		Self()
	}
}
