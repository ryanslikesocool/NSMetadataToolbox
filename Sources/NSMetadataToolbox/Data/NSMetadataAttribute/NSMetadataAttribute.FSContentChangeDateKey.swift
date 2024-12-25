private import let Foundation.NSMetadataAttributes.NSMetadataItemFSContentChangeDateKey
import struct Foundation.Date

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemFSContentChangeDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemfscontentchangedatekey)\.
	struct FSContentChangeDateKey: NSMetadataAttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemFSContentChangeDateKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttribute.FSContentChangeDateKey
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/FSContentChangeDateKey``.
	static var fsContentChangeDate: Self {
		Self()
	}
}
