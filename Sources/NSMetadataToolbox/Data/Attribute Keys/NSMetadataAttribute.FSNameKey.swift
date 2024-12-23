private import let Foundation.NSMetadataAttributes.NSMetadataItemFSNameKey

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemFSNameKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemfsnamekey)\.
	enum FSNameKey: NSMetadataAttributeKeyProtocol {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemFSNameKey }
	}
}

// MARK: - Convenience

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKey<NSMetadataAttribute.FSNameKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/FSNameKey``.
	static var fsName: Self {
		Self()
	}
}
