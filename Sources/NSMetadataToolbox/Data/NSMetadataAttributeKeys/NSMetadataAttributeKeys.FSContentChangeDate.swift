import let Foundation.NSMetadataAttributes.NSMetadataItemFSContentChangeDateKey
import struct Foundation.Date

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`NSMetadataItemFSContentChangeDateKey`]( https://developer.apple.com/documentation/foundation/nsmetadataitemfscontentchangedatekey ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/fsContentChangeDate``
	struct FSContentChangeDate: NSMetadataAttributeKey {
		public typealias Output = Date

		public static var attributeKey: String {
			NSMetadataItemFSContentChangeDateKey
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.FSContentChangeDate
{
	/// The attribute key for
	/// [`NSMetadataItemFSContentChangeDateKey`]( https://developer.apple.com/documentation/foundation/nsmetadataitemfscontentchangedatekey ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/FSContentChangeDate``
	static var fsContentChangeDate: Self {
		Self()
	}
}
