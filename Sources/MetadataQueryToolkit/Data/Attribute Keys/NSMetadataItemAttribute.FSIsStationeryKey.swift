import Foundation

@available(macOS 10.4, *)
public extension NSMetadataItemAttribute {
	/// The attribute key for
	/// [`kMDItemFSIsStationery`](https://developer.apple.com/documentation/coreservices/kmditemfsisstationery)\.
	enum FSIsStationeryKey: NSMetadataItemAttributeKey {
		public typealias Value = Bool

		public static var attributeKey: String { kMDItemFSIsStationery as String }
	}

	// MARK: Convenience

	/// The shorthand attribute key accessor for ``NSMetadataItemAttribute/FSIsStationeryKey``.
	var fsIsStationery: FSIsStationeryKey.Type {
		FSIsStationeryKey.self
	}
}
