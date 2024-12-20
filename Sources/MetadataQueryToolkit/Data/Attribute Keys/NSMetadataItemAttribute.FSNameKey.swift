import Foundation

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`NSMetadataItemFSNameKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemfsnamekey)\.
	struct FSNameKey: NSMetadataItemAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemFSNameKey }

		public init() { }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/FSNameKey``.
	var fsName: FSNameKey.Type {
		FSNameKey.self
	}
}

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataItemAttributeProtocol where
	Self == NSMetadataItemAttribute.FSNameKey
{
	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/FSNameKey``.
	static var fsName: Self {
		Self()
	}
}
