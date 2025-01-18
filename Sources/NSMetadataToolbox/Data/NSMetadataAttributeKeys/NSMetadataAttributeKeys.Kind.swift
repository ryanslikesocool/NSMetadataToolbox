import let CoreServices.Metadata.MDItem.kMDItemKind

@available(macOS 10.4, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`kMDItemKind`]( https://developer.apple.com/documentation/coreservices/kmditemkind ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/kind``
	struct Kind: NSMetadataAttributeKey {
		public typealias Output = String

		public static var attributeKey: String {
			kMDItemKind as String
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.Kind
{
	/// The attribute key for
	/// [`kMDItemKind`]( https://developer.apple.com/documentation/coreservices/kmditemkind ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/Kind``
	static var kind: Self {
		Self()
	}
}
