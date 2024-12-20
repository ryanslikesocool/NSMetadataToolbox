import Foundation

@available(macOS 10.4, *)
public extension NSMetadataAttribute {
	/// The attribute key for
	/// [`kMDItemFSIsStationery`](https://developer.apple.com/documentation/coreservices/kmditemfsisstationery)\.
	enum FSIsStationeryKey: NSMetadataItemAttributeKey {
		public typealias Value = Bool

		public static var attributeKey: String { kMDItemFSIsStationery as String }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataAttribute/FSIsStationeryKey``.
	var fsIsStationery: FSIsStationeryKey.Type {
		FSIsStationeryKey.self
	}
}

@available(macOS 10.4, *)
public extension NSMetadataAttributeProtocol where
	Self == AnyNSMetadataAttributeKey<NSMetadataAttribute.FSIsStationeryKey>
{
	/// The shorthand attribute key accessor for ``NSMetadataAttribute/FSIsStationeryKey``.
	static var fsIsStationery: Self {
		Self()
	}
}
