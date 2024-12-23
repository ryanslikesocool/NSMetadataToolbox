# ``NSMetadataAttributeKey``

## Discussion

Attribute keys are declared similarly to a SwiftUI
[`EnvironmentKey`](https://developer.apple.com/documentation/swiftui/environmentkey)\.
In most cases, declaring a new attribute key is as simple as knowing the key string and value type.

For example, the implementation for ``NSMetadataAttribute/DisplayNameKey`` looks like this:
```swift
extension NSMetadataItemAttribute {
	struct DisplayNameKey: NSMetadataAttributeKey {
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


### Shorthand Attribute Key Accessors

You can create shorthand attribute key accessors to greatly simplify accessing attribute values.
The declaration for ``NSMetadataAttributeProtocol/displayName`` looks like this:
```swift
extension NSMetadataAttributeProtocol where
	Self == NSMetadataAttribute.DisplayNameKey
{
	static var displayName: Self {
		Self()
	}
}
```
```swift
func readDisplayName(
	from metadataItem: NSMetadataItem
) -> String? {
	var result: String?

	// With a fully qualified initializer:
	result = metadataItem.value(
		forAttribute: NSMetadataAttribute.DisplayNameKey()
	)

	// With a shorthand attribute key accessor:
	result = metadataItem.value(
		forAttribute: .displayName
	)

	return result
}
```


Additional attribute key constants can be found in the documentation for 
[`NSMetadataItem`](https://developer.apple.com/documentation/foundation/nsmetadataitem#1681152),
[`MDItem`](https://developer.apple.com/documentation/coreservices/file_metadata/mditem#1658393), and
[File Metadata](https://developer.apple.com/documentation/coreservices/file_metadata#2934150)\.
