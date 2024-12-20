import Foundation

@available(macOS 10.4, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`kMDItemFSInvisible`](https://developer.apple.com/documentation/coreservices/kmditemfsinvisible)\.
	struct FSInvisibleKey: NSMetadataItemAttributeKey {
		public typealias Value = Bool

		public static var attributeKey: String { kMDItemFSInvisible as String }

		public init() { }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/FSInvisibleKey``.
	var fsInvisible: FSInvisibleKey.Type {
		FSInvisibleKey.self
	}
}

@available(macOS 10.4, *)
public extension NSMetadataItemAttributeProtocol where
	Self == NSMetadataItemAttribute.FSInvisibleKey
{
	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/FSInvisibleKey``.
	static var fsInvisible: Self {
		Self()
	}
}
