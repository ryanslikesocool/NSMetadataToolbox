import Foundation

@available(macOS 10.4, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`kMDItemFSIsExtensionHidden`](https://developer.apple.com/documentation/coreservices/kmditemfsisextensionhidden)\.
	enum FSIsExtensionHiddenKey: NSMetadataItemAttributeKey {
		public typealias Value = Bool

		public static var attributeKey: String { kMDItemFSIsExtensionHidden as String }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataAttribute/FSIsExtensionHiddenKey``.
	var fsIsExtensionHidden: FSIsExtensionHiddenKey.Type {
		FSIsExtensionHiddenKey.self
	}
}

@available(macOS 10.4, *)
public extension NSMetadataAttributeProtocol where
	Self == AnyNSMetadataAttributeKey<NSMetadataAttribute.FSIsExtensionHiddenKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/FSIsExtensionHiddenKey``.
	static var fsIsExtensionHidden: Self {
		Self()
	}
}
