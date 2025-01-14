import let Foundation.NSMetadataAttributes.NSMetadataItemCFBundleIdentifierKey

@available(macOS 10.9, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for
	/// [`NSMetadataItemCFBundleIdentifierKey`]( https://developer.apple.com/documentation/foundation/nsmetadataitemcfbundleidentifierkey ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/cfBundleIdentifier``
	struct CFBundleIdentifier: NSMetadataAttributeKey {
		public typealias Output = String

		public static var attributeKey: String {
			NSMetadataItemCFBundleIdentifierKey
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.CFBundleIdentifier
{
	/// The attribute key for
	/// [`NSMetadataItemCFBundleIdentifierKey`]( https://developer.apple.com/documentation/foundation/nsmetadataitemcfbundleidentifierkey ).
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/CFBundleIdentifier``
	static var cfBundleIdentifier: Self {
		Self()
	}
}
