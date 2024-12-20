import Foundation

@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemDownloadedDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemdownloadeddatekey)\.
	enum DownloadedDateKey: NSMetadataItemAttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemDownloadedDateKey }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataAttribute/DownloadedDateKey``.
	var downloadedDate: DownloadedDateKey.Type {
		DownloadedDateKey.self
	}
}

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == AnyNSMetadataAttributeKey<NSMetadataAttribute.DownloadedDateKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/DownloadedDateKey``.
	static var downloadedDate: Self {
		Self()
	}
}
