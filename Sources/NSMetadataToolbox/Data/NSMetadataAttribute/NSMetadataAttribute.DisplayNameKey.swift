import let Foundation.NSMetadataAttributes.NSMetadataItemDisplayNameKey

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemDisplayNameKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemdisplaynamekey)\.
	struct DisplayNameKey: NSMetadataAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemDisplayNameKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(iOS 5, macCatalyst 13.1, macOS 10.7, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttribute.DisplayNameKey
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/DisplayNameKey``.
	static var displayName: Self {
		Self()
	}
}
