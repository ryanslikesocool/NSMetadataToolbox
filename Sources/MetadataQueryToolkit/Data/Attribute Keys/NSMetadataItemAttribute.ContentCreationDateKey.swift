import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`NSMetadataItemContentCreationDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemcontentcreationdatekey)\.
	struct ContentCreationDateKey: NSMetadataItemAttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemContentCreationDateKey }

		public init() { }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/ContentCreationDateKey``.
	var contentCreationDate: ContentCreationDateKey.Type {
		ContentCreationDateKey.self
	}
}

@available(macOS 10.9, *)
public extension NSMetadataItemAttributeProtocol where
	Self == NSMetadataItemAttribute.ContentCreationDateKey
{
	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/ContentCreationDateKey``.
	static var contentCreationDate: Self {
		Self()
	}
}
