import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`NSMetadataItemAttributeChangeDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemattributechangedatekey)\.
	struct AttributeChangeDateKey: NSMetadataItemAttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemAttributeChangeDateKey }

		public init() { }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/AttributeChangeDateKey``.
	var attributeChangeDate: AttributeChangeDateKey.Type {
		AttributeChangeDateKey.self
	}
}

@available(macOS 10.9, *)
public extension NSMetadataItemAttributeProtocol where
	Self == NSMetadataItemAttribute.AttributeChangeDateKey
{
	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/AttributeChangeDateKey``.
	static var attributeChangeDate: Self {
		Self()
	}
}
