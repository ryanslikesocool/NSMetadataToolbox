import let CoreServices.Metadata.MDItem.kMDItemExecutableArchitectures

@available(macOS 10.7, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`kMDItemExecutableArchitectures`]( https://developer.apple.com/documentation/coreservices/kmditemexecutablearchitectures ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/executableArchitectures``
	struct ExecutableArchitectures: NSMetadataAttributeKey {
		public typealias Output = [String]

		public static var attributeKey: String {
			kMDItemExecutableArchitectures as String
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.7, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.ExecutableArchitectures
{
	/// The attribute key for
	/// [`kMDItemExecutableArchitectures`]( https://developer.apple.com/documentation/coreservices/kmditemexecutablearchitectures ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/ExecutableArchitectures``
	static var executableArchitectures: Self {
		Self()
	}
}
