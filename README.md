# Metadata Query Toolbox
Extensions and conveniences for [`NSMetadataQuery`](https://developer.apple.com/documentation/foundation/nsmetadataquery).

## Installation (Swift Package Manager)
Add the following entry to your package dependencies...
```swift
.package(url: "https://github.com/ryanslikesocool/MetadataQueryToolbox.git", from: "0.0.2"),
```
...and your target dependencies.
```swift
.target(
	name: "MyTarget",
	dependencies: [
		"MetadataQueryToolbox",
	]
),
```

---


## Quick Start

### Using Attribute Keys
This package provides a simple and type-safe way to access attribute values from
[`NSMetadataItem`](https://developer.apple.com/documentation/foundation/nsmetadataitem)
in the form of the `NSMetadataItemAttributeKey` protocol.
```swift
import Foundation
import MetadataQueryToolbox

func readDisplayName(from metadataItem: NSMetadataItem) -> String? {
	var result: String?

	// With a fully qualified attribute key type...
	result = metadataItem.value(
		forAttribute: NSMetadataItemAttribute.DisplayNameKey.self
	)

	// ...or with a shorthand attribute key accessor.
	result = metadataItem.value(
		forAttribute: \.displayName
	)

	return result
}
```

### Custom Attribute Keys
Multiple attribute keys are provided by the package,
and more can be added with a simple declaration.
```swift
import MetadataQueryToolbox

extension NSMetadataItemAttribute {
	// Declare the attribute key...
	enum MyCustomValueKey: NSMetadataItemAttributeKey {
		// The type of attribute value that the `attributeKey` points to.
		typealias Value = String

		// The key used to access the attribute value.
		static let attributeKey: String = "MyCustomValueKey"
	}

	// ...and (optionally) a shorthand attribute key accessor.
	var myCustomValue: MyCustomValueKey.Type {
		MyCustomValueKey.self
	}
}
```

### Swift Concurrency
```swift
import Foundation
import MetadataQueryToolbox
import UniformTypeIdentifiers

func gatherMetadata(
	forContent contentTypeIdentifier: UTType,
	in searchScopes: [URL]
) async -> [NSMetadataItem] {
	// Create a query...
	let query = NSMetadataQuery()
	query.predicate = NSPredicate(
		format: "\(NSMetadataItemContentTypeKey) == '\(contentTypeIdentifier.identifier)'"
	)
	query.searchScopes = searchScopes

	// ...await...
	await query.gatherResults()

	// ...and use.
	return query.results.compactMap { item in
		item as? NSMetadataItem
	}
}
```

---


## Documentation
Most of this package is documented with
[DocC](https://www.swift.org/documentation/docc/).
<br/>
In Xcode, select `Product > Build Documentation` from the menu bar.

---


## Contribution
Feel free to
[create an issue](https://github.com/ryanslikesocool/MetadataQueryToolbox/issues/new)
or
[open a pull request](https://github.com/ryanslikesocool/MetadataQueryToolbox/compare).
