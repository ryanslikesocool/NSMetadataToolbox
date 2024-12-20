import Foundation

@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemContentModificationDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemcontentmodificationdatekey)\.
	enum ContentModificationDateKey: NSMetadataItemAttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemContentModificationDateKey }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataAttribute/ContentModificationDateKey``.
	var contentModificationDate: ContentModificationDateKey.Type {
		ContentModificationDateKey.self
	}
}

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == AnyNSMetadataAttributeKey<NSMetadataAttribute.ContentModificationDateKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/ContentModificationDateKey``.
	static var contentModificationDate: Self {
		Self()
	}
}
