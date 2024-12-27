import let Foundation.NSMetadataAttributes.NSMetadataItemFSCreationDateKey
import struct Foundation.Date

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`NSMetadataItemFSCreationDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemfscreationdatekey)\.
	struct FSCreationDate: NSMetadataAttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemFSCreationDateKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKeys.FSCreationDate
{
	/// The shorthand attribute key accessor for ``NSMetadataAttributeKeys/FSCreationDate``.
	static var fsCreationDate: Self {
		Self()
	}
}