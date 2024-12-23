import class Foundation.NSMetadata.NSMetadataItem

@available(iOS 5, macCatalyst 13.1, macOS 10.4, tvOS 9, visionOS 1, watchOS 2, *)
public extension NSMetadataItem {
	/// Returns the value for the attribute name specified by the given key.
	/// - Parameter key: The key that specifies the name of a metadata attribute.
	/// - Returns: The value for the attribute name specified by `key`, if it could be found; `nil` otherwise.
	func value<Key>(forAttribute key: Key) -> Key.Output where
		Key: NSMetadataAttributeProtocol,
		Key.Input == NSMetadataItem
	{
		key.process(self)
	}

//	/// Returns the values for the attribute names specified by the given keys.
//	/// - Parameter keys: The keyss that specify the names of metadata attributes.
//	/// - Returns: For each tuple element, the value for the attribute name specified by the corresponding item in `keys`, if it could be found; `nil` otherwise.
//	func values<each Key>(forAttributes keys: repeat each Key) -> (repeat (each Key).Output) where
//		repeat each Key: NSMetadataAttributeProtocol,
//		repeat (each Key).Input == NSMetadataItem // NOTE: Parameter packs do not support this constraint yet.
//	{
//		(repeat value(forAttribute: each keys))
//	}
}
