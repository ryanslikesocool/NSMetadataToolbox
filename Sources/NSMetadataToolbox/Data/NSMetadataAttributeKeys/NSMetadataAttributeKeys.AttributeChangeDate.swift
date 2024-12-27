import let Foundation.NSMetadataAttributes.NSMetadataItemAttributeChangeDateKey
import struct Foundation.Date

@available(macOS 10.9, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`NSMetadataItemAttributeChangeDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemattributechangedatekey)\.
	struct AttributeChangeDate: NSMetadataAttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemAttributeChangeDateKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.AttributeChangeDate
{
	/// The shorthand attribute key accessor for ``NSMetadataAttributeKeys/AttributeChangeDate``.
	static var attributeChangeDate: Self {
		Self()
	}
}
