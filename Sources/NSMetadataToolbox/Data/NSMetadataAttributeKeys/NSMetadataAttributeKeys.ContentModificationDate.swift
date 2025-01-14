import let Foundation.NSMetadataAttributes.NSMetadataItemContentModificationDateKey
import struct Foundation.Date

@available(macOS 10.9, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`NSMetadataItemContentModificationDateKey`]( https://developer.apple.com/documentation/foundation/nsmetadataitemcontentmodificationdatekey ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/contentModificationDate``
	struct ContentModificationDate: NSMetadataAttributeKey {
		public typealias Output = Date

		public static var attributeKey: String {
			NSMetadataItemContentModificationDateKey
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.ContentModificationDate
{
	/// The attribute key for
	/// [`NSMetadataItemContentModificationDateKey`]( https://developer.apple.com/documentation/foundation/nsmetadataitemcontentmodificationdatekey ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/ContentModificationDate``
	static var contentModificationDate: Self {
		Self()
	}
}
