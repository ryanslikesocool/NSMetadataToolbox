# ``NSMetadataAttributeKey``

## Discussion

Attribute keys are declared similarly to a SwiftUI
[`EnvironmentKey`](https://developer.apple.com/documentation/swiftui/environmentkey)\.
In most cases, declaring a new attribute key is as simple as knowing the key string and value type.

For example, the implementation for ``NSMetadataAttributeKeys/DisplayName`` looks like this:
```swift
extension NSMetadataAttributeKeys {
	struct DisplayName: NSMetadataAttributeKey {
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


### Additional Attribute Key Constants

Additional attribute key constants can be found in the documentation for 
[`NSMetadataItem`](https://developer.apple.com/documentation/foundation/nsmetadataitem#1681152)\,
[`MDItem`](https://developer.apple.com/documentation/coreservices/file_metadata/mditem#1658393)\,
and
[File Metadata](https://developer.apple.com/documentation/coreservices/file_metadata#2934150)\.
