import Foundation

/// A key for accessing attribute values in an
/// [`NSMetadataItem`](https://developer.apple.com/documentation/foundation/nsmetadataitem)\.
public protocol NSMetadataItemAttributeKey {
	/// The expected value type returned by ``Foundation/NSMetadataItem/value(forAttribute:)-2nmqa``.
	associatedtype Value

	/// The underlying attribute key.
	///
	/// See the "Item Attribute Keys" section in the [documentation for `NSMetadataItem`](https://developer.apple.com/documentation/foundation/nsmetadataitem) for a list of possible keys.
	static var attributeKey: String { get }
}
