import Foundation

@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemContentCreationDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemcontentcreationdatekey)\.
	enum ContentCreationDateKey: NSMetadataItemAttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemContentCreationDateKey }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataAttribute/ContentCreationDateKey``.
	var contentCreationDate: ContentCreationDateKey.Type {
		ContentCreationDateKey.self
	}
}

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == AnyNSMetadataAttributeKey<NSMetadataAttribute.ContentCreationDateKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/ContentCreationDateKey``.
	static var contentCreationDate: Self {
		Self()
	}
}
