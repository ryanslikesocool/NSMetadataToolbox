import let CoreServices.Metadata.MDItem.kMDItemExecutablePlatform

@available(macOS 10.7, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`kMDItemExecutablePlatform`]( https://developer.apple.com/documentation/coreservices/kmditemexecutableplatform ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/executablePlatform``
	struct ExecutablePlatform: NSMetadataAttributeKey {
		public typealias Output = String

		public static var attributeKey: String {
			kMDItemExecutablePlatform as String
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.7, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.ExecutablePlatform
{
	/// The attribute key for
	/// [`kMDItemExecutablePlatform`]( https://developer.apple.com/documentation/coreservices/kmditemexecutableplatform ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/ExecutablePlatform``
	static var executablePlatform: Self {
		Self()
	}
}
