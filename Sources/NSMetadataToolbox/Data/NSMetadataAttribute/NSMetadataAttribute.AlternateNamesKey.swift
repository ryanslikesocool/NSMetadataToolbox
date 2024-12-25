// TODO: Should this key be available on other platforms?
@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for ``kMDItemAlternateNames``.
	struct AlternateNamesKey: NSMetadataAttributeKey {
		public typealias Value = [String]

		public static var attributeKey: String { kMDItemAlternateNames }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttribute.AlternateNamesKey
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/AlternateNamesKey``.
	static var alternateNames: Self {
		Self()
	}
}
