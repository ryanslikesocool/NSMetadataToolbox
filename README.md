# Async NSMetadataQuery
A simple Swift concurrency wrapper for [`NSMetadataQuery`](https://developer.apple.com/documentation/foundation/nsmetadataquery).

## Installation (Swift Package Manager)
Add the following entry to your package dependencies...
```swift
.package(url: "https://github.com/ryanslikesocool/AsyncNSMetadataQuery.git", from: "0.0.1"),
```
...and your target dependencies.
```swift
.target(
	name: "MyTarget",
	dependencies: [
		"AsyncNSMetadataQuery",
	]
),
```

## Usage
```swift
import AsyncNSMetadataQuery
import Foundation
import UniformTypeIdentifiers

func gatherMetadata(
	forContent contentTypeIdentifier: UTType,
	in searchScopes: [URL]
) async -> [NSMetadataItem] {
	// create a query...
	let query = NSMetadataQuery()
	query.predicate = NSPredicate(format: "\(NSMetadataItemContentTypeKey) == '\(contentTypeIdentifier.identifier)'")
	query.searchScopes = searchScopes

	// ...wait...
	await query.gatherResults()

	// ...and use!
	return query.results.compactMap { item in
		item as? NSMetadataItem
	}
}
```
