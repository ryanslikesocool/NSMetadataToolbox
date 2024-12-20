import Foundation

@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemAttributeChangeDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemattributechangedatekey)\.
	enum AttributeChangeDateKey: NSMetadataItemAttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemAttributeChangeDateKey }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataAttribute/AttributeChangeDateKey``.
	var attributeChangeDate: AttributeChangeDateKey.Type {
		AttributeChangeDateKey.self
	}
}

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == AnyNSMetadataAttributeKey<NSMetadataAttribute.AttributeChangeDateKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/AttributeChangeDateKey``.
	static var attributeChangeDate: Self {
		Self()
	}
}
