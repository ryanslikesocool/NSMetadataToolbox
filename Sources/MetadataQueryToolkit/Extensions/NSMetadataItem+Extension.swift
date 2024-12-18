import Foundation

@available(macOS 10.4, iOS 5, tvOS 9, watchOS 2, macCatalyst 13.1, visionOS 1, *)
public extension NSMetadataItem {
	/// Returns the value for the attribute name specified by the given key.
	/// - Parameter key: The type of a ``Foundation/NSMetadataItem/AttributeKey`` that specifies the name of a metadata attribute.
	/// - Returns: The value for the attribute name specified by `key`, if it could be found; `nil` otherwise.
	func value<Key>(forAttribute key: Key.Type) -> Key.Value? where
		Key: NSMetadataItem.AttributeKey
	{
		value(forAttribute: key.attributeKey) as? Key.Value
	}

	/// Returns the values for the attribute names specified by the given keys.
	/// - Parameter keys: The types of ``Foundation/NSMetadataItem/AttributeKey``s that specify the names of metadata attributes.
	/// - Returns: For each tuple element, the value for the attribute name specified by the corresponding item in `keys`, if it could be found; `nil` otherwise.
	func values<each Key>(forAttributes keys: repeat (each Key).Type) -> (repeat (each Key).Value?) where
		repeat each Key: NSMetadataItem.AttributeKey
	{
		(repeat value(forAttribute: each keys))
	}
}
