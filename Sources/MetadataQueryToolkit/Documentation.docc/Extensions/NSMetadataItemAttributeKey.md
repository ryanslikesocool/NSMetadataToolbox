# ``NSMetadataItemAttributeKey``

## Discussion

An attribute key is declared similarly to a SwiftUI
[`EnvironmentKey`](https://developer.apple.com/documentation/swiftui/environmentkey)\.
In most cases, declaring a new attribute key is as simple as knowing the key string and value type.


For example, the implementation for ``NSMetadataItemAttribute/DisplayNameKey`` looks like this:
```swift
extension NSMetadataItemAttribute {
	enum DisplayNameKey: NSMetadataItemAttributeKey {
		// The type of value that the key points to.
		// In this case, a `String`.
		public typealias Value = String

		// The underlying string for the attribute key.
		public static var attributeKey: String {
			// `Foundation` declares this constant for us,
			// so we can use that instead of declaring it manually.
			NSMetadataItemDisplayNameKey
		}
	}
}
```


You can create shorthand attribute key accessors to greatly simplify accessing attribute values.
The declaration for ``NSMetadataItemAttribute/displayName`` looks like this:
```swift
extension NSMetadataItemAttribute {
	// The enclosing type `NSMetadataItemAttribute` doesn't need to
	// be qualified because the attribute key type was declared in an extension. 
	var displayName: DisplayNameKey.Type {
		DisplayNameKey.self
	}
}
```
```swift
func readDisplayName(
	from metadataItem: NSMetadataItem
) -> String? {
	var result: String?

	// With a fully qualified attribute key:
	result = metadataItem.value(
		forKey: NSMetadataItemAttribute.DisplayNameKey.self
	)

	// With a shorthand attribute key:
	result = metadataItem.value(
		forKey: \.displayName
	)

	return result
}
```


Additional attribute key constants can be found in the documentation for 
[`NSMetadataItem`](https://developer.apple.com/documentation/foundation/nsmetadataitem#1681152),
[`MDItem`](https://developer.apple.com/documentation/coreservices/file_metadata/mditem#1658393), and
[File Metadata](https://developer.apple.com/documentation/coreservices/file_metadata#2934150)\.