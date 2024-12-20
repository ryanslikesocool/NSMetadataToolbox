import Foundation

@available(macOS 10.4, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`kMDItemFSHasCustomIcon`](https://developer.apple.com/documentation/coreservices/kmditemhascustomicon)\.
	enum FSHasCustomIconKey: NSMetadataItemAttributeKey {
		public typealias Value = Bool

		public static var attributeKey: String { kMDItemFSHasCustomIcon as String }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataAttribute/FSHasCustomIconKey``.
	var fsHasCustomIcon: FSHasCustomIconKey.Type {
		FSHasCustomIconKey.self
	}
}

@available(macOS 10.4, *)
public extension NSMetadataAttributeProtocol where
	Self == AnyNSMetadataAttributeKey<NSMetadataAttribute.FSHasCustomIconKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/FSHasCustomIconKey``.
	static var fsHasCustomIcon: Self {
		Self()
	}
}
