import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`NSMetadataItemDownloadedDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemdownloadeddatekey)\.
	struct DownloadedDateKey: NSMetadataItemAttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemDownloadedDateKey }

		public init() { }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/DownloadedDateKey``.
	var downloadedDate: DownloadedDateKey.Type {
		DownloadedDateKey.self
	}
}

@available(macOS 10.9, *)
public extension NSMetadataItemAttributeProtocol where
	Self == NSMetadataItemAttribute.DownloadedDateKey
{
	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/DownloadedDateKey``.
	static var downloadedDate: Self {
		Self()
	}
}
