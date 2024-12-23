private import let Foundation.NSMetadataAttributes.NSMetadataItemExecutablePlatformKey

@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemExecutablePlatformKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemexecutableplatformkey)\.
	struct ExecutablePlatformKey: NSMetadataAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemExecutablePlatformKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttribute.ExecutablePlatformKey
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/ExecutablePlatformKey``.
	static var executablePlatform: Self {
		Self()
	}
}
