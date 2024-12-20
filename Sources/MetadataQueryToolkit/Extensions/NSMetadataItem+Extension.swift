import Foundation

@available(iOS 5, macCatalyst 13.1, macOS 10.4, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataItem {
	/// Returns the value for the attribute name specified by the given key.
	/// - Parameter key: The key that specifies the name of a metadata attribute.
	/// - Returns: The value for the attribute name specified by `key`, if it could be found; `nil` otherwise.
	func value<Key>(forAttribute key: Key) -> Key.Output where
		Key: NSMetadataItemAttributeProtocol,
		Key.Input == NSMetadataItem
	{
		key.process(self)
	}

//	// MARK: - Metatype
//
//	/// Returns the value for the attribute name specified by the given key.
//	/// - Parameter key: The type of a ``NSMetadataItemAttributeKey`` that specifies the name of a metadata attribute.
//	/// - Returns: The value for the attribute name specified by `key`, if it could be found; `nil` otherwise.
//	func value<Key>(forAttribute key: Key.Type) -> Key.Value? where
//		Key: NSMetadataItemAttributeKey
//	{
//		value(forAttribute: key.attributeKey) as? Key.Value
//	}
//
//	/// Returns the values for the attribute names specified by the given keys.
//	/// - Parameter keys: The types of ``NSMetadataItemAttributeKey``s that specify the names of metadata attributes.
//	/// - Returns: For each tuple element, the value for the attribute name specified by the corresponding item in `keys`, if it could be found; `nil` otherwise.
//	func values<each Key>(forAttributes keys: repeat (each Key).Type) -> (repeat (each Key).Value?) where
//		repeat each Key: NSMetadataItemAttributeKey
//	{
//		(repeat value(forAttribute: each keys))
//	}
//
//	// MARK: - Keypath to Metatype
//
//	/// Returns the value for the attribute name specified by the given key.
//	/// - Parameter key: The type of a ``NSMetadataItemAttributeKey`` that specifies the name of a metadata attribute.
//	/// - Returns: The value for the attribute name specified by `key`, if it could be found; `nil` otherwise.
//	func value<Key>(forAttribute key: KeyPath<NSMetadataItemAttribute, Key.Type>) -> Key.Value? where
//		Key: NSMetadataItemAttributeKey
//	{
//		value(forAttribute: Key.self)
//	}
//
//	/// Returns the values for the attribute names specified by the given keys.
//	/// - Parameter keys: The types of ``NSMetadataItemAttributeKey``s that specify the names of metadata attributes.
//	/// - Returns: For each tuple element, the value for the attribute name specified by the corresponding item in `keys`, if it could be found; `nil` otherwise.
//	func values<each Key>(forAttributes keys: repeat KeyPath<NSMetadataItemAttribute, (each Key).Type>) -> (repeat (each Key).Value?) where
//		repeat each Key: NSMetadataItemAttributeKey
//	{
//		(repeat value(forAttribute: (each Key).self))
//	}
}
