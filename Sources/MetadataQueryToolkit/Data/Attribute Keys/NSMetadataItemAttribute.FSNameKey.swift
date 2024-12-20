import Foundation

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemFSNameKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemfsnamekey)\.
	enum FSNameKey: NSMetadataItemAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemFSNameKey }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataAttribute/FSNameKey``.
	var fsName: FSNameKey.Type {
		FSNameKey.self
	}
}

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttributeProtocol where
	Self == AnyNSMetadataAttributeKey<NSMetadataAttribute.FSNameKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/FSNameKey``.
	static var fsName: Self {
		Self()
	}
}
