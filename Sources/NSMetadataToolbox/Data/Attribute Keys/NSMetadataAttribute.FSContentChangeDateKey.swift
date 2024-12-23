import struct Foundation.Date
private import let Foundation.NSMetadataAttributes.NSMetadataItemFSContentChangeDateKey

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemFSContentChangeDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemfscontentchangedatekey)\.
	enum FSContentChangeDateKey: NSMetadataAttributeKeyProtocol {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemFSContentChangeDateKey }
	}
}

// MARK: - Convenience

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKey<NSMetadataAttribute.FSContentChangeDateKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/FSContentChangeDateKey``.
	static var fsContentChangeDate: Self {
		Self()
	}
}
