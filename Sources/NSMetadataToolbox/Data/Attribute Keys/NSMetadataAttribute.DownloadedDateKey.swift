import struct Foundation.Date
private import let Foundation.NSMetadataAttributes.NSMetadataItemDownloadedDateKey

@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemDownloadedDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemdownloadeddatekey)\.
	struct DownloadedDateKey: NSMetadataAttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemDownloadedDateKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttribute.DownloadedDateKey
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/DownloadedDateKey``.
	static var downloadedDate: Self {
		Self()
	}
}
