import struct Foundation.Date
private import let Foundation.NSMetadataAttributes.NSMetadataItemAttributeChangeDateKey

@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemAttributeChangeDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemattributechangedatekey)\.
	enum AttributeChangeDateKey: NSMetadataAttributeKeyProtocol {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemAttributeChangeDateKey }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKey<NSMetadataAttribute.AttributeChangeDateKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/AttributeChangeDateKey``.
	static var attributeChangeDate: Self {
		Self()
	}
}
