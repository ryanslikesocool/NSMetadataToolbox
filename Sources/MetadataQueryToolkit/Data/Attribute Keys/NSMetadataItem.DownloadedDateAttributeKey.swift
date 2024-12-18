import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItem {
	/// The attribute key for
	/// [`NSMetadataItemDownloadedDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemdownloadeddatekey)
	/// .
	enum DownloadedDateAttributeKey: NSMetadataItem.AttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemDownloadedDateKey }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataItem.AttributeKey where
	Self == NSMetadataItem.DownloadedDateAttributeKey
{
	/// The shorthand accessor for ``NSMetadataItem/DownloadedDateAttributeKey``.
	static var downloadedDate: Self.Type {
		Self.self
	}
}
