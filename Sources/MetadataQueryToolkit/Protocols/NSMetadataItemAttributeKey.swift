import Foundation

/// A key for accessing attribute values in an
/// [`NSMetadataItem`](https://developer.apple.com/documentation/foundation/nsmetadataitem)\.
public protocol NSMetadataItemAttributeKey {
	/// The expected value type returned by ``Foundation/NSMetadataItem/value(forAttribute:)-2nmqa``.
	associatedtype Value

	/// The underlying attribute key.
	///
	/// Attribute key constants can be found in the documentation for
	/// [`NSMetadataItem`](https://developer.apple.com/documentation/foundation/nsmetadataitem#1681152),
	/// [`MDItem`](https://developer.apple.com/documentation/coreservices/file_metadata/mditem#1658393), and
	/// [File Metadata](https://developer.apple.com/documentation/coreservices/file_metadata#2934150)\.
	static var attributeKey: String { get }
}
