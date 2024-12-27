// TODO: Should this key be available on other platforms?
@available(macOS 10.9, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for ``kMDItemAlternateNames``.
	struct AlternateNames: NSMetadataAttributeKey {
		public typealias Value = [String]

		public static var attributeKey: String { kMDItemAlternateNames }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKeys.AlternateNames
{
	/// The shorthand attribute key accessor for ``NSMetadataAttributeKeys/AlternateNames``.
	static var alternateNames: Self {
		Self()
	}
}
