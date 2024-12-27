import let Foundation.NSMetadataAttributes.NSMetadataItemExecutableArchitecturesKey

@available(macOS 10.9, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`NSMetadataItemExecutableArchitecturesKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemexecutablearchitectureskey)\.
	struct ExecutableArchitectures: NSMetadataAttributeKey {
		public typealias Value = [String]

		public static var attributeKey: String { NSMetadataItemExecutableArchitecturesKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.ExecutableArchitectures
{
	/// The shorthand attribute key accessor for ``NSMetadataAttributeKeys/ExecutableArchitectures``.
	static var executableArchitectures: Self {
		Self()
	}
}
