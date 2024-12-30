import let Foundation.NSMetadataAttributes.NSMetadataItemAttributeChangeDateKey
import struct Foundation.Date

@available(macOS 10.9, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`NSMetadataItemAttributeChangeDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemattributechangedatekey)\.
	///
	/// ## See Also
	/// - ``NSMetadataAttributeObject/attributeChangeDate``
	struct AttributeChangeDate: NSMetadataAttributeKey {
		public typealias Output = Date

		public static var attributeKey: String { NSMetadataItemAttributeChangeDateKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.AttributeChangeDate
{
	/// The attribute key for
	/// [`NSMetadataItemAttributeChangeDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemattributechangedatekey)\.
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/AttributeChangeDate``
	static var attributeChangeDate: Self {
		Self()
	}
}
