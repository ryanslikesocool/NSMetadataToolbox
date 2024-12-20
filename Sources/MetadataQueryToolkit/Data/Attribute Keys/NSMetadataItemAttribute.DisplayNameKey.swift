import Foundation

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemDisplayNameKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemdisplaynamekey)\.
	enum DisplayNameKey: NSMetadataItemAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemDisplayNameKey }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataAttribute/DisplayNameKey``.
	var displayName: DisplayNameKey.Type {
		DisplayNameKey.self
	}
}

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttributeProtocol where
	Self == AnyNSMetadataAttributeKey<NSMetadataAttribute.DisplayNameKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/DisplayNameKey``.
	static var displayName: Self {
		Self()
	}
}
