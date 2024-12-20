import Foundation

@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemDateAddedKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemdateaddedkey)\.
	enum DateAddedKey: NSMetadataItemAttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemDateAddedKey }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataAttribute/DateAddedKey``.
	var dateAdded: DateAddedKey.Type {
		DateAddedKey.self
	}
}

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == AnyNSMetadataAttributeKey<NSMetadataAttribute.DateAddedKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/DateAddedKey``.
	static var dateAdded: Self {
		Self()
	}
}
