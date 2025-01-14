# Quick Start

## Using Attribute Keys

This package provides a simple and type-safe way to access attribute values from
[`NSMetadataItem`]( https://developer.apple.com/documentation/foundation/nsmetadataitem )
in the form of the ``NSMetadataAttributeKey`` protocol.
```swift
import Foundation
import NSMetadataToolbox

func readDisplayName(
	from metadataItem: NSMetadataItem
) throws -> String {
	var result: String

	// Read the value with a fully qualified initializer...
	result = try metadataItem.value(
		forAttribute: NSMetadataAttributeKeys.DisplayName()
	)

	// ...or with a shorthand accessor.
	result = try metadataItem.value(
		forAttribute: .displayName
	)

	return result
}
```

---


## Custom Attribute Keys

Multiple attribute keys are provided by the package,
and more can be added with a simple declaration.
```swift
import NSMetadataToolbox

// Declare the attribute key...
struct MyCustomValueMetadataAttributeKey: NSMetadataAttributeKey {
	// The type of attribute value that the `attributeKey` points to.
	typealias Output = String

	// The key used to access the attribute value.
	static let attributeKey: String = "MyCustomValueKey"
}
```

In cases where the fully-qualified key name is verbose or used frequently,
it can be useful to declare a shorthand attribute key accessor.
```swift
extension NSMetadataAttributeObject where
	Self == MyCustomValueMetadataAttributeKey
{
	static var myCustomValue: Self {
		Self()
	}
}
```

---


## Swift Concurrency

```swift
import Foundation
import NSMetadataToolbox
import UniformTypeIdentifiers

func gatherMetadata(
	forContent contentTypeIdentifier: UTType,
	in searchScopes: [URL]
) async -> [NSMetadataItem] {
	// Create a query as usual...
	let query = NSMetadataQuery()
	query.predicate = NSPredicate(
		format: "%K == %@",
		NSMetadataItemContentTypeKey, contentTypeIdentifier.identifier
	)
	query.searchScopes = searchScopes

	// ...await results...
	await query.gatherResults()

	// ...and use as usual.
	return query.results.compactMap { item in
		item as? NSMetadataItem
	}
}
```

``Foundation/NSMetadataQuery/gatherResults(isolation:notificationCenter:)``
also accepts arguments for actor `isolation` and the `notificationCenter` to use.
```swift
/* imports */

func gatherMetadata(
	isolation: isolated (any Actor)?
	/* arguments */
) async -> [NSMetadataItem] {
	/* query creation */

	let notificationCenter: NotificationCenter = .myNotificationCenter

	await query.gatherResults(
		isolation: isolation,
		notificationCenter: notificationCenter
	)

	/* query usage and return */
}
```
