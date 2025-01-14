import let Foundation.NSMetadataAttributes.NSMetadataItemFSCreationDateKey
import struct Foundation.Date

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`NSMetadataItemFSCreationDateKey`]( https://developer.apple.com/documentation/foundation/nsmetadataitemfscreationdatekey ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/fsCreationDate``
	struct FSCreationDate: NSMetadataAttributeKey {
		public typealias Output = Date

		public static var attributeKey: String {
			NSMetadataItemFSCreationDateKey
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.FSCreationDate
{
	/// The attribute key for
	/// [`NSMetadataItemFSCreationDateKey`]( https://developer.apple.com/documentation/foundation/nsmetadataitemfscreationdatekey ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/FSCreationDate``
	static var fsCreationDate: Self {
		Self()
	}
}
