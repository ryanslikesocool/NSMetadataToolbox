import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`NSMetadataItemLastUsedDateKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemlastuseddatekey)\.
	struct LastUsedDateKey: NSMetadataItemAttributeKey {
		public typealias Value = Date

		public static var attributeKey: String { NSMetadataItemLastUsedDateKey }

		public init() { }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/LastUsedDateKey``.
	var lastUsedDate: LastUsedDateKey.Type {
		LastUsedDateKey.self
	}
}

@available(macOS 10.9, *)
public extension NSMetadataItemAttributeProtocol where
	Self == NSMetadataItemAttribute.LastUsedDateKey
{
	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/LastUsedDateKey``.
	static var lastUsedDate: Self {
		Self()
	}
}
