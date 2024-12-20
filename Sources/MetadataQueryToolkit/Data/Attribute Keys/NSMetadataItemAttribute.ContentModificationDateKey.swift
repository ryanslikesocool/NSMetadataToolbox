import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`NSMetadataItemContentModificationDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemcontentmodificationdatekey)\.
	struct ContentModificationDateKey: NSMetadataItemAttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemContentModificationDateKey }

		public init() { }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/ContentModificationDateKey``.
	var contentModificationDate: ContentModificationDateKey.Type {
		ContentModificationDateKey.self
	}
}

@available(macOS 10.9, *)
public extension NSMetadataItemAttributeProtocol where
	Self == NSMetadataItemAttribute.ContentModificationDateKey
{
	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/ContentModificationDateKey``.
	static var contentModificationDate: Self {
		Self()
	}
}
