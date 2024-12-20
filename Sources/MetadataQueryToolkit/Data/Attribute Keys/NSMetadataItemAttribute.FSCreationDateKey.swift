import Foundation

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`NSMetadataItemFSCreationDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemfscreationdatekey)\.
	struct FSCreationDateKey: NSMetadataItemAttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemFSCreationDateKey }

		public init() { }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/FSCreationDateKey``.
	var fsCreationDate: FSCreationDateKey.Type {
		FSCreationDateKey.self
	}
}

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataItemAttributeProtocol where
	Self == NSMetadataItemAttribute.FSCreationDateKey
{
	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/FSCreationDateKey``.
	static var fsCreationDate: Self {
		Self()
	}
}
