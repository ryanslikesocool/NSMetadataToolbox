import let Foundation.NSMetadataAttributes.NSMetadataItemDateAddedKey
import struct Foundation.Date

@available(macOS 10.9, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`NSMetadataItemDateAddedKey`]( https://developer.apple.com/documentation/foundation/nsmetadataitemdateaddedkey ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/dateAdded``
	struct DateAdded: NSMetadataAttributeKey {
		public typealias Output = Date

		public static var attributeKey: String {
			NSMetadataItemDateAddedKey
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.DateAdded
{
	/// The attribute key for
	/// [`NSMetadataItemDateAddedKey`]( https://developer.apple.com/documentation/foundation/nsmetadataitemdateaddedkey ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/DateAdded``
	static var dateAdded: Self {
		Self()
	}
}
