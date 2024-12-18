import Foundation

@available(macOS 10.4, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`kMDItemFSHasCustomIcon`](https://developer.apple.com/documentation/coreservices/kmditemhascustomicon)\.
	enum FSHasCustomIconKey: NSMetadataItemAttributeKey {
		public typealias Value = Bool

		public static var attributeKey: String { kMDItemFSHasCustomIcon as String }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/FSHasCustomIconKey``.
	var fsHasCustomIcon: FSHasCustomIconKey.Type {
		FSHasCustomIconKey.self
	}
}
