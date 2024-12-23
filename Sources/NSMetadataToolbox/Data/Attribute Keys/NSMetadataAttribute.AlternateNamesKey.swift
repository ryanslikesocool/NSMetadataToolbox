// TODO: Should this key be available on other platforms?
@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for ``kMDItemAlternateNames``.
	enum AlternateNamesKey: NSMetadataAttributeKeyProtocol {
		public typealias Value = [String]

		public static var attributeKey: String { kMDItemAlternateNames }
	}
}

// MARK: - Convenience

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKey<NSMetadataAttribute.AlternateNamesKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/AlternateNamesKey``.
	static var alternateNames: Self {
		Self()
	}
}
