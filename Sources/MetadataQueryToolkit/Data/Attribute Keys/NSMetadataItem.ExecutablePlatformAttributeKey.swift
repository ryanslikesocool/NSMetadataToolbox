import Foundation

@available(macOS 10.9, *)
public extension NSMetadataItem {
	/// The attribute key for
	/// [`NSMetadataItemExecutablePlatformKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemexecutableplatformkey)
	/// .
	enum ExecutablePlatformAttributeKey: NSMetadataItem.AttributeKey {
		public typealias Value = String

		public static var attributeKey: String { NSMetadataItemExecutablePlatformKey }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataItem.AttributeKey where
	Self == NSMetadataItem.ExecutablePlatformAttributeKey
{
	/// The shorthand accessor for ``NSMetadataItem/ExecutablePlatformAttributeKey``.
	static var executablePlatform: Self.Type {
		Self.self
	}
}
