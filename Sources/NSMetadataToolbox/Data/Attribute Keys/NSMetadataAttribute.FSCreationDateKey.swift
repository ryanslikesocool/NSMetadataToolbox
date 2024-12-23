import struct Foundation.Date
private import let Foundation.NSMetadataAttributes.NSMetadataItemFSCreationDateKey

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemFSCreationDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemfscreationdatekey)\.
	enum FSCreationDateKey: NSMetadataAttributeKeyProtocol {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemFSCreationDateKey }
	}
}

// MARK: - Convenience

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKey<NSMetadataAttribute.FSCreationDateKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/FSCreationDateKey``.
	static var fsCreationDate: Self {
		Self()
	}
}
