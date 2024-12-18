import Foundation

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`NSMetadataItemDisplayNameKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemdisplaynamekey)\.
	enum DisplayNameKey: NSMetadataItemAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemDisplayNameKey }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/DisplayNameKey``.
	var displayName: DisplayNameKey.Type {
		DisplayNameKey.self
	}
}