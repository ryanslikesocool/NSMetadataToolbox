import Foundation

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`NSMetadataItemURLKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemurlkey)\.
	struct URLKey: NSMetadataItemAttributeKey {
		public typealias Value = URL

		public static var attributeKey: String { NSMetadataItemURLKey }

		public init() { }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/URLKey``.
	var url: URLKey.Type {
		URLKey.self
	}
}

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataItemAttributeProtocol where
	Self == NSMetadataItemAttribute.URLKey
{
	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/URLKey``.
	static var url: Self {
		Self()
	}
}
