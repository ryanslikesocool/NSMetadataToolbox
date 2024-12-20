import Foundation

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`NSMetadataItemFSContentChangeDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemfscontentchangedatekey)\.
	struct FSContentChangeDateKey: NSMetadataItemAttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemFSContentChangeDateKey }

		public init() { }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/FSContentChangeDateKey``.
	var fsContentChangeDate: FSContentChangeDateKey.Type {
		FSContentChangeDateKey.self
	}
}

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataItemAttributeProtocol where
	Self == NSMetadataItemAttribute.FSContentChangeDateKey
{
	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/FSContentChangeDateKey``.
	static var fsContentChangeDate: Self {
		Self()
	}
}
