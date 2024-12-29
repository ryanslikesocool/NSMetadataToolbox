import let Foundation.NSMetadataAttributes.NSMetadataItemURLKey
import struct Foundation.URL

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`NSMetadataItemURLKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemurlkey)\.
	///
	/// ## See Also
	/// - ``NSMetadataAttributeObject/url``
	struct URL: NSMetadataAttributeKey {
		public typealias Output = Foundation.URL

		public static var attributeKey: String { NSMetadataItemURLKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.URL
{
	/// The attribute key for
	/// [`NSMetadataItemURLKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemurlkey)\.
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/URL``
	static var url: Self {
		Self()
	}
}
