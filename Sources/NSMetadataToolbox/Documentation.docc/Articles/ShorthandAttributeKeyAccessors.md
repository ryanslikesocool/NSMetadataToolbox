# Shorthand Attribute Key Accessors

Simplify attribute key access.

## Example

You can create shorthand attribute key accessors to greatly simplify accessing attribute values.

The declaration for ``NSMetadataAttributeObject/displayName`` looks like this:
```swift
extension NSMetadataAttributeObject where
	Self == NSMetadataAttributeKeys.DisplayName
{
	static var displayName: Self {
		Self()
	}
}
```

```swift
func readDisplayName(
	from metadataItem: NSMetadataItem
) throws -> String {
	var result: String

	// With a fully qualified initializer:
	result = try metadataItem.value(
		forAttribute: NSMetadataAttributeKeys.DisplayName()
	)

	// With a shorthand attribute key accessor:
	result = try metadataItem.value(
		forAttribute: .displayName
	)

	return result
}
```
