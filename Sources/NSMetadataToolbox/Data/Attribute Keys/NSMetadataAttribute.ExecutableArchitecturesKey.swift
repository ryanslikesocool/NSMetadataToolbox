private import let Foundation.NSMetadataAttributes.NSMetadataItemExecutableArchitecturesKey

@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`NSMetadataItemExecutableArchitecturesKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemexecutablearchitectureskey)\.
	enum ExecutableArchitecturesKey: NSMetadataAttributeKeyProtocol {
		public typealias Value = [String]

		public static var attributeKey: String { NSMetadataItemExecutableArchitecturesKey }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKey<NSMetadataAttribute.ExecutableArchitecturesKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/ExecutableArchitecturesKey``.
	static var executableArchitectures: Self {
		Self()
	}
}
