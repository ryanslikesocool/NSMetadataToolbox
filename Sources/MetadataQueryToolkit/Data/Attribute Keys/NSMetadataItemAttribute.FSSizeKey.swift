import Foundation

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`NSMetadataItemFSSizeKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemfssizekey)\.
	struct FSSizeKey: NSMetadataItemAttributeKey {
		// This type is assumed based on light testing.
		// When `Value == CFNumber`, `CFNumberGetType` returns `.sInt64Type`.
		// This could potentially be `Int32` on 32-bit machines, in which case `Value` should be `Int`.
		// `ByteCountFormatStyle` only supports `Int64`.
		public typealias Value = Int64

		public static var attributeKey: String { NSMetadataItemFSSizeKey }

		public init() { }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/FSSizeKey``.
	var fsSize: FSSizeKey.Type {
		FSSizeKey.self
	}
}

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataItemAttributeProtocol where
	Self == NSMetadataItemAttribute.FSSizeKey
{
	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/FSSizeKey``.
	static var fsSize: Self {
		Self()
	}
}
