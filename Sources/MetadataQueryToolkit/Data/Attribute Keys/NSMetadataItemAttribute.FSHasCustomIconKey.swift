import Foundation

@available(macOS 10.4, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`kMDItemFSHasCustomIcon`](https://developer.apple.com/documentation/coreservices/kmditemhascustomicon)\.
	struct FSHasCustomIconKey: NSMetadataItemAttributeKey {
		public typealias Value = Bool

		public static var attributeKey: String { kMDItemFSHasCustomIcon as String }

		public init() { }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/FSHasCustomIconKey``.
	var fsHasCustomIcon: FSHasCustomIconKey.Type {
		FSHasCustomIconKey.self
	}
}

@available(macOS 10.4, *)
public extension NSMetadataItemAttributeProtocol where
	Self == NSMetadataItemAttribute.FSHasCustomIconKey
{
	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/FSHasCustomIconKey``.
	static var fsHasCustomIcon: Self {
		Self()
	}
}
