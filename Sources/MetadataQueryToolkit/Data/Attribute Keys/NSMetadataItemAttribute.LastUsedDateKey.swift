import Foundation

@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemLastUsedDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemlastuseddatekey)\.
	enum LastUsedDateKey: NSMetadataItemAttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemLastUsedDateKey }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataAttribute/LastUsedDateKey``.
	var lastUsedDate: LastUsedDateKey.Type {
		LastUsedDateKey.self
	}
}

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == AnyNSMetadataAttributeKey<NSMetadataAttribute.LastUsedDateKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/LastUsedDateKey``.
	static var lastUsedDate: Self {
		Self()
	}
}
