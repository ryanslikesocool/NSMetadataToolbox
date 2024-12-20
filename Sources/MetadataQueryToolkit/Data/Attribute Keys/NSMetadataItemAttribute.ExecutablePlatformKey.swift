import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`NSMetadataItemExecutablePlatformKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemexecutableplatformkey)\.
	struct ExecutablePlatformKey: NSMetadataItemAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemExecutablePlatformKey }

		public init() { }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/ExecutablePlatformKey``.
	var executablePlatform: ExecutablePlatformKey.Type {
		ExecutablePlatformKey.self
	}
}

@available(macOS 10.9, *)
public extension NSMetadataItemAttributeProtocol where
	Self == NSMetadataItemAttribute.ExecutablePlatformKey
{
	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/ExecutablePlatformKey``.
	static var executablePlatform: Self {
		Self()
	}
}
