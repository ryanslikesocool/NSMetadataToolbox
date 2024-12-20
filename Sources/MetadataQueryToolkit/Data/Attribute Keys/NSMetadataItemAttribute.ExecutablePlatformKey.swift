import Foundation

@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemExecutablePlatformKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemexecutableplatformkey)\.
	enum ExecutablePlatformKey: NSMetadataItemAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemExecutablePlatformKey }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataAttribute/ExecutablePlatformKey``.
	var executablePlatform: ExecutablePlatformKey.Type {
		ExecutablePlatformKey.self
	}
}

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == AnyNSMetadataAttributeKey<NSMetadataAttribute.ExecutablePlatformKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/ExecutablePlatformKey``.
	static var executablePlatform: Self {
		Self()
	}
}
