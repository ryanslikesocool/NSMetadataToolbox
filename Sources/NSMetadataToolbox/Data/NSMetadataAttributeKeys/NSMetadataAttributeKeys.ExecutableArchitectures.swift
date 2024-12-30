import let Foundation.NSMetadataAttributes.NSMetadataItemExecutableArchitecturesKey

@available(macOS 10.9, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`NSMetadataItemExecutableArchitecturesKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemexecutablearchitectureskey)\.
	///
	/// ## See Also
	/// - ``NSMetadataAttributeObject/executableArchitectures``
	struct ExecutableArchitectures: NSMetadataAttributeKey {
		public typealias Output = [String]

		public static var attributeKey: String { NSMetadataItemExecutableArchitecturesKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.ExecutableArchitectures
{
	/// The attribute key for
	/// [`NSMetadataItemExecutableArchitecturesKey`](https://developer.apple.com/documentation/foundation/nsmetadataitemexecutablearchitectureskey)\.
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/ExecutableArchitectures``
	static var executableArchitectures: Self {
		Self()
	}
}
