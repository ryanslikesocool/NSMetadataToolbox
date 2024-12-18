import Foundation

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`NSMetadataItemFSSizeKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemfssizekey)\.
	enum FSSizeKey: NSMetadataItemAttributeKey {
		public typealias Value = NSNumber

		public static var attributeKey: String { NSMetadataItemFSSizeKey }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/FSSizeKey``.
	var fsSize: FSSizeKey.Type {
		FSSizeKey.self
	}
}