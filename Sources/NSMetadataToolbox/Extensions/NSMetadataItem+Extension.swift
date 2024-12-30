import DeclarativeCore
import class Foundation.NSMetadata.NSMetadataItem

@available(iOS 5, macCatalyst 13.1, macOS 10.4, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataItem {
	/// Returns the value for the attribute name specified by the given key.
	/// - Parameter attributeKey: The key that specifies the name of a metadata attribute.
	/// - Returns: The value for the attribute name specified by `attributeKey`.
	func value<Key>(forAttribute attributeKey: Key) throws -> Key.Output where
		Key: NSMetadataAttributeObject,
		Key.Input == NSMetadataItem
	{
		// TODO: Should we really be restricting `Key: NSMetadataAttributeObject`?
		// Should we actually restrict it to `Key: ObjectProcessor`?
		// A relaxed restriction may allow us to remove `NSMetadataAttributeObject` conformances for modifiers.

		try attributeKey.process(self)
	}

//	/// Returns the values for the attribute names specified by the given keys.
//	/// - Parameter attributeKeys: The keys that specify the names of metadata attributes.
//	/// - Returns: For each element: the value for the attribute name specified by the corresponding item in `attributeKeys`, if it could be found; `nil` otherwise.
//	func values<each Key>(forAttributes attributeKeys: repeat each Key) -> (repeat Result<(each Key).Output, any Error>) where
//		repeat each Key: NSMetadataAttributeObject,
//		repeat (each Key).Input == NSMetadataItem // NOTE: Parameter packs do not support this constraint yet.
//	{
//		(repeat value(forAttribute: each attributeKeys))
//	}
}
