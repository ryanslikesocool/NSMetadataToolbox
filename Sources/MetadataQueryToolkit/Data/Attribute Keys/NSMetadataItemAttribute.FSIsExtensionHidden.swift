import Foundation

@available(macOS 10.4, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`kMDItemFSIsExtensionHidden`](https://developer.apple.com/documentation/coreservices/kmditemfsisextensionhidden)\.
	struct FSIsExtensionHiddenKey: NSMetadataItemAttributeKey {
		public typealias Value = Bool

		public static var attributeKey: String { kMDItemFSIsExtensionHidden as String }

		public init() { }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/FSIsExtensionHiddenKey``.
	var fsIsExtensionHidden: FSIsExtensionHiddenKey.Type {
		FSIsExtensionHiddenKey.self
	}
}

@available(macOS 10.4, *)
public extension NSMetadataItemAttributeProtocol where
	Self == NSMetadataItemAttribute.FSIsExtensionHiddenKey
{
	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/FSIsExtensionHiddenKey``.
	static var fsIsExtensionHidden: Self {
		Self()
	}
}
