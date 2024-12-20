import Foundation

@available(macOS 10.4, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`kMDItemFSInvisible`](https://developer.apple.com/documentation/coreservices/kmditemfsinvisible)\.
	enum FSInvisibleKey: NSMetadataItemAttributeKey {
		public typealias Value = Bool

		public static var attributeKey: String { kMDItemFSInvisible as String }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataAttribute/FSInvisibleKey``.
	var fsInvisible: FSInvisibleKey.Type {
		FSInvisibleKey.self
	}
}

@available(macOS 10.4, *)
public extension NSMetadataAttributeProtocol where
	Self == AnyNSMetadataAttributeKey<NSMetadataAttribute.FSInvisibleKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/FSInvisibleKey``.
	static var fsInvisible: Self {
		Self()
	}
}
