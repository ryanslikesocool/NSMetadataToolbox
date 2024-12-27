import let Foundation.NSMetadataAttributes.NSMetadataItemDescriptionKey

@available(macOS 10.9, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`NSMetadataItemDescriptionKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemdescriptionkey)\.
	struct Description: NSMetadataAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemDescriptionKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKeys.Description
{
	/// The shorthand attribute key accessor for ``NSMetadataAttributeKeys/Description``.
	static var description: Self {
		Self()
	}
}
