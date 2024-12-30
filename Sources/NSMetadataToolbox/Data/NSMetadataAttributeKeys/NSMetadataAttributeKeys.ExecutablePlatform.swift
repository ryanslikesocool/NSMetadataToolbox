import let Foundation.NSMetadataAttributes.NSMetadataItemExecutablePlatformKey

@available(macOS 10.9, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`NSMetadataItemExecutablePlatformKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemexecutableplatformkey)\.
	///
	/// ## See Also
	/// - ``NSMetadataAttributeObject/executablePlatform``
	struct ExecutablePlatform: NSMetadataAttributeKey {
		public typealias Output = String

		public static var attributeKey: String { NSMetadataItemExecutablePlatformKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.ExecutablePlatform
{
	/// The attribute key for
	/// [`NSMetadataItemExecutablePlatformKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemexecutableplatformkey)\.
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/ExecutablePlatform``
	static var executablePlatform: Self {
		Self()
	}
}
