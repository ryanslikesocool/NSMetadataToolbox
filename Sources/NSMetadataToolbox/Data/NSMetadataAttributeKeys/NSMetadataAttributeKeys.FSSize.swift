import let Foundation.NSMetadataAttributes.NSMetadataItemFSSizeKey

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`NSMetadataItemFSSizeKey`]( https://developer.apple.com/documentation/foundation/nsmetadataitemfssizekey ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/fsSize``
	struct FSSize: NSMetadataAttributeKey {
		// This type is assumed based on light testing.
		// When `Value == CFNumber`, `CFNumberGetType` returns `.sInt64Type`.
		// This could potentially be `Int32` on 32-bit machines, in which case `Value` should be `Int`.
		// `ByteCountFormatStyle` only supports `Int64`.
		public typealias Output = Int64

		public static var attributeKey: String {
			NSMetadataItemFSSizeKey
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.FSSize
{
	/// The attribute key for
	/// [`NSMetadataItemFSSizeKey`]( https://developer.apple.com/documentation/foundation/nsmetadataitemfssizekey ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/FSSize``
	static var fsSize: Self {
		Self()
	}
}
