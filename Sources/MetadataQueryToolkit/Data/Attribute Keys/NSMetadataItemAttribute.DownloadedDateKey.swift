import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`NSMetadataItemDownloadedDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemdownloadeddatekey)\.
	enum DownloadedDateKey: NSMetadataItemAttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemDownloadedDateKey }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/DownloadedDateKey``.
	var downloadedDate: DownloadedDateKey.Type {
		DownloadedDateKey.self
	}
}