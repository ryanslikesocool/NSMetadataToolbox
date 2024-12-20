// TODO: Should this key be available on other platforms?
@available(macOS 10.9, *)
public extension NSMetadataAttribute {
	/// The attribute key for ``kMDItemAlternateNames``.
	enum AlternateNamesKey: NSMetadataItemAttributeKey {
		public typealias Value = [String]

		public static var attributeKey: String { kMDItemAlternateNames }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataAttribute/AlternateNamesKey``.
	var alternateNames: AlternateNamesKey.Type {
		AlternateNamesKey.self
	}
}

@available(macOS 10.9, *)
public extension NSMetadataAttributeProtocol where
	Self == AnyNSMetadataAttributeKey<NSMetadataAttribute.AlternateNamesKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/AlternateNamesKey``.
	static var alternateNames: Self {
		Self()
	}
}
