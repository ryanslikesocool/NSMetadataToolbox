import let Foundation.NSMetadataAttributes.NSMetadataItemDownloadedDateKey
import struct Foundation.Date

@available(macOS 10.9, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`NSMetadataItemDownloadedDateKey`]( https://developer.apple.com/documentation/foundation/nsmetadataitemdownloadeddatekey ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/downloadedDate``
	struct DownloadedDate: NSMetadataAttributeKey {
		public typealias Output = Date

		public static var attributeKey: String {
			NSMetadataItemDownloadedDateKey
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.DownloadedDate
{
	/// The attribute key for
	/// [`NSMetadataItemDownloadedDateKey`]( https://developer.apple.com/documentation/foundation/nsmetadataitemdownloadeddatekey ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/DownloadedDate``
	static var downloadedDate: Self {
		Self()
	}
}
