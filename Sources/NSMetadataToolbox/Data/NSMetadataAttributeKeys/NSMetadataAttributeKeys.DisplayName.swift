import let Foundation.NSMetadataAttributes.NSMetadataItemDisplayNameKey

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`NSMetadataItemDisplayNameKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemdisplaynamekey)\.
	///
	/// ## See Also
	/// - ``NSMetadataAttributeObject/displayName``
	struct DisplayName: NSMetadataAttributeKey {
		public typealias Output = String

		public static var attributeKey: String { NSMetadataItemDisplayNameKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.DisplayName
{
	/// The shorthand attribute key accessor for ``NSMetadataAttributeKeys/DisplayName``.
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/DisplayName``
	static var displayName: Self {
		Self()
	}
}
