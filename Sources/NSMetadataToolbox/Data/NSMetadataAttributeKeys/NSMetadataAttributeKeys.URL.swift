import let Foundation.NSMetadataAttributes.NSMetadataItemURLKey
import struct Foundation.URL

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`NSMetadataItemURLKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemurlkey)\.
	struct URL: NSMetadataAttributeKey {
		public typealias Value = Foundation.URL

		public static var attributeKey: String { NSMetadataItemURLKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKeys.URL
{
	/// The shorthand attribute key accessor for ``NSMetadataAttributeKeys/URL``.
	static var url: Self {
		Self()
	}
}
