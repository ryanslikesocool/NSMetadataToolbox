import let Foundation.NSMetadataAttributes.NSMetadataItemDownloadedDateKey
import struct Foundation.Date

@available(macOS 10.9, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`NSMetadataItemDownloadedDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemdownloadeddatekey)\.
	struct DownloadedDate: NSMetadataAttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemDownloadedDateKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKeys.DownloadedDate
{
	/// The shorthand attribute key accessor for ``NSMetadataAttributeKeys/DownloadedDate``.
	static var downloadedDate: Self {
		Self()
	}
}
