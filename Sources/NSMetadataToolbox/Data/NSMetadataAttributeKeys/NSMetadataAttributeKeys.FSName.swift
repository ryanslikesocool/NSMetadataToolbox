import let Foundation.NSMetadataAttributes.NSMetadataItemFSNameKey

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`NSMetadataItemFSNameKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemfsnamekey)\.
	///
	/// ## See Also
	/// - ``NSMetadataAttributeObject/fsName``
	struct FSName: NSMetadataAttributeKey {
		public typealias Output = String

		public static var attributeKey: String { NSMetadataItemFSNameKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.FSName
{
	/// The attribute key for
	/// [`NSMetadataItemFSNameKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemfsnamekey)\.
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/FSName``
	static var fsName: Self {
		Self()
	}
}
