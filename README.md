# Metadata Query Toolkit
Extensions and conveniences for [`NSMetadataQuery`](https://developer.apple.com/documentation/foundation/nsmetadataquery).

## Installation (Swift Package Manager)
Add the following entry to your package dependencies...
```swift
.package(url: "https://github.com/ryanslikesocool/MetadataQueryToolkit.git", from: "0.0.2"),
```
...and your target dependencies.
```swift
.target(
	name: "MyTarget",
	dependencies: [
		"MetadataQueryToolkit",
	]
),
```

## Usage

### Swift Concurrency
```swift
import Foundation
import MetadataQueryToolkit
import UniformTypeIdentifiers

func gatherMetadata(
	forContent contentTypeIdentifier: UTType,
	in searchScopes: [URL]
) async -> [NSMetadataItem] {
	// create a query...
	let query = NSMetadataQuery()
	query.predicate = NSPredicate(format: "\(NSMetadataItemContentTypeKey) == '\(contentTypeIdentifier.identifier)'")
	query.searchScopes = searchScopes

	// ...await...
	await query.gatherResults()

	// ...and use!
	return query.results.compactMap { item in
		item as? NSMetadataItem
	}
}
```
