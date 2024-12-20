import Foundation

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemFSCreationDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemfscreationdatekey)\.
	enum FSCreationDateKey: NSMetadataItemAttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemFSCreationDateKey }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataAttribute/FSCreationDateKey``.
	var fsCreationDate: FSCreationDateKey.Type {
		FSCreationDateKey.self
	}
}

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttributeProtocol where
	Self == AnyNSMetadataAttributeKey<NSMetadataAttribute.FSCreationDateKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/FSCreationDateKey``.
	static var fsCreationDate: Self {
		Self()
	}
}
