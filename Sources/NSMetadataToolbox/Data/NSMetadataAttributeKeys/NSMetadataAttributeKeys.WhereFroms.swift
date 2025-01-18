import let CoreServices.Metadata.MDItem.kMDItemWhereFroms

@available(macOS 10.4, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`kMDItemWhereFroms`]( https://developer.apple.com/documentation/coreservices/kmditemwherefroms ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/whereFroms``
	struct WhereFroms: NSMetadataAttributeKey {
		public typealias Output = [String]

		public static var attributeKey: String {
			kMDItemWhereFroms as String
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeObject where
Self == NSMetadataAttributeKeys.WhereFroms
{
	/// The attribute key for
	/// [`kMDItemWhereFroms`]( https://developer.apple.com/documentation/coreservices/kmditemwherefroms ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/WhereFroms``
	static var whereFroms: Self {
		Self()
	}
}
