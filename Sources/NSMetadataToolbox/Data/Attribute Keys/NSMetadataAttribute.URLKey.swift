private import let Foundation.NSMetadataAttributes.NSMetadataItemURLKey
import struct Foundation.URL

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemURLKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemurlkey)\.
	enum URLKey: NSMetadataAttributeKeyProtocol {
		public typealias Value = URL

		public static var attributeKey: String { NSMetadataItemURLKey }
	}
}

// MARK: - Convenience

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKey<NSMetadataAttribute.URLKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/URLKey``.
	static var url: Self {
		Self()
	}
}
