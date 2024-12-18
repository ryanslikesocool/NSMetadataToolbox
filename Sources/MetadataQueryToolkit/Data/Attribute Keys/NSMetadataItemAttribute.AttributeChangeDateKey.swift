import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`NSMetadataItemAttributeChangeDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemattributechangedatekey)\.
	enum AttributeChangeDateKey: NSMetadataItemAttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemAttributeChangeDateKey }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/AttributeChangeDateKey``.
	var attributeChangeDate: AttributeChangeDateKey.Type {
		AttributeChangeDateKey.self
	}
}
