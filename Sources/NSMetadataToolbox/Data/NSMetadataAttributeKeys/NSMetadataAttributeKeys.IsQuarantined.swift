@available(macOS 10.0, *)
public extension NSMetadataAttributeKeys {
	/// The attribute key for ``kMDItemIsQuarantined``.
	///
	/// ## Topics
	/// ### Convenience
	/// - ``NSMetadataAttributeObject/isQuarantined``
	struct IsQuarantined: NSMetadataAttributeKey {
		public typealias Output = Bool

		public static var attributeKey: String {
			kMDItemIsQuarantined
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.0, *)
public extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.IsQuarantined
{
	/// The attribute key for ``kMDItemIsQuarantined``.
	///
	/// ## See Also
	/// - ``NSMetadataAttributeKeys/IsQuarantined``
	static var isQuarantined: Self {
		Self()
	}
}
