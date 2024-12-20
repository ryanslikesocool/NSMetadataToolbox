import Foundation

@available(macOS 10.4, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`kMDItemFSIsStationery`](https://developer.apple.com/documentation/coreservices/kmditemfsisstationery)\.
	struct FSIsStationeryKey: NSMetadataItemAttributeKey {
		public typealias Value = Bool

		public static var attributeKey: String { kMDItemFSIsStationery as String }

		public init() { }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/FSIsStationeryKey``.
	var fsIsStationery: FSIsStationeryKey.Type {
		FSIsStationeryKey.self
	}
}

@available(macOS 10.4, *)
public extension NSMetadataItemAttributeProtocol where
	Self == NSMetadataItemAttribute.FSIsStationeryKey
{
	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/FSIsStationeryKey``.
	static var fsIsStationery: Self {
		Self()
	}
}
