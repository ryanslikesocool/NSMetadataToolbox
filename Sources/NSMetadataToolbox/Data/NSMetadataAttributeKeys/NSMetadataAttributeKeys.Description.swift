import let Foundation.NSMetadataAttributes.NSMetadataItemDescriptionKey

@available(macOS 10.9, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`NSMetadataItemDescriptionKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemdescriptionkey)\.
	///
	/// ## See Also
	/// - ``NSMetadataAttributeObject/description``
	struct Description: NSMetadataAttributeKey {
		public typealias Output = String

		public static var attributeKey: String { NSMetadataItemDescriptionKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.Description
{
	/// The attribute key for
	/// [`NSMetadataItemDescriptionKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemdescriptionkey)\.
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/Description``
	static var description: Self {
		Self()
	}
}
