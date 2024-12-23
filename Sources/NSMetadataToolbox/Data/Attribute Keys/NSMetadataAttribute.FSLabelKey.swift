import class CoreFoundation.CFNumber
private import let CoreServices.Metadata.MDItem.kMDItemFSLabel

@available(macOS 10.4, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`kMDItemFSLabel`](https://developer.apple.com/documentation/coreservices/kmditemfslabel)\.
	enum FSLabelKey: NSMetadataAttributeKeyProtocol {
		// This type is assumed based on light testing.
		// When `Value == CFNumber`, `CFNumberGetType` returns `.sInt64Type`.
		// This could potentially be `Int32` on 32-bit machines, in which case `Value` should be `Int`.
		public typealias Value = Int64

		public static var attributeKey: String { kMDItemFSLabel as String }
	}
}

// MARK: - Convenience

@available(macOS 10.4, *)
public extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttributeKey<NSMetadataAttribute.FSLabelKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/FSLabelKey``.
	static var fsLabel: Self {
		Self()
	}
}
