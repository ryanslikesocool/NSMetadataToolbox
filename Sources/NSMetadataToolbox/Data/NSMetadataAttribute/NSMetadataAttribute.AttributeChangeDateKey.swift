private import let Foundation.NSMetadataAttributes.NSMetadataItemAttributeChangeDateKey
import struct Foundation.Date

@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemAttributeChangeDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemattributechangedatekey)\.
	struct AttributeChangeDateKey: NSMetadataAttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemAttributeChangeDateKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttribute.AttributeChangeDateKey
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/AttributeChangeDateKey``.
	static var attributeChangeDate: Self {
		Self()
	}
}
