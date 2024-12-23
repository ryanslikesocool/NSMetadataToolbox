private import let Foundation.NSMetadataAttributes.NSMetadataItemExecutablePlatformKey

@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemExecutablePlatformKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemexecutableplatformkey)\.
	enum ExecutablePlatformKey: NSMetadataAttributeKeyProtocol {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemExecutablePlatformKey }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKey<NSMetadataAttribute.ExecutablePlatformKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/ExecutablePlatformKey``.
	static var executablePlatform: Self {
		Self()
	}
}
