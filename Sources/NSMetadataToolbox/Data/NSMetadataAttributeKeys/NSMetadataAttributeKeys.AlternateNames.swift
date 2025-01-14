@available(macOS 10.9, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for ``kMDItemAlternateNames``.
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/alternateNames``
	struct AlternateNames: NSMetadataAttributeKey {
		public typealias Output = [String]

		public static var attributeKey: String {
			kMDItemAlternateNames
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.AlternateNames
{
	/// The attribute key for ``kMDItemAlternateNames``.
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/AlternateNames``
	static var alternateNames: Self {
		Self()
	}
}
