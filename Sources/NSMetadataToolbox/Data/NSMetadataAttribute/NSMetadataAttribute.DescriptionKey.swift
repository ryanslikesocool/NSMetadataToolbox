private import let Foundation.NSMetadataAttributes.NSMetadataItemDescriptionKey

@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemDescriptionKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemdescriptionkey)\.
	struct DescriptionKey: NSMetadataAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemDescriptionKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttribute.DescriptionKey
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/DescriptionKey``.
	static var description: Self {
		Self()
	}
}
