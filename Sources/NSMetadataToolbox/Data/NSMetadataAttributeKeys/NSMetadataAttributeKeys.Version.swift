import let Foundation.NSMetadataAttributes.NSMetadataItemVersionKey

@available(macOS 10.9, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`NSMetadataItemVersionKey`]( https://developer.apple.com/documentation/foundation/nsmetadataitemversionkey ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/version``
	struct Version: NSMetadataAttributeKey {
		public typealias Output = String

		public static var attributeKey: String {
			NSMetadataItemVersionKey
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.Version
{
	/// The attribute key for
	/// [`NSMetadataItemVersionKey`]( https://developer.apple.com/documentation/foundation/nsmetadataitemversionkey ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/Version``
	static var version: Self {
		Self()
	}
}
