# ``Foundation/NSMetadataQuery/results(as:)``

## Discussion

The array is a proxy object that is primarily intended for use with Cocoa bindings.
While it is possible to copy the proxy array and receive a “snapshot” of the complete current query results,
it is generally not recommended due to performance and memory issues.
To access individual result array elements, use the
[`resultCount`](https://developer.apple.com/documentation/foundation/nsmetadataquery/1418315-resultcount) property and
[`result(at:)`](https://developer.apple.com/documentation/foundation/nsmetadataquery/1410162-result) method.

The array supports
[Key-value observing](https://developer.apple.com/library/archive/documentation/General/Conceptual/DevPedia-CocoaCore/KVO.html#//apple_ref/doc/uid/TP40008195-CH16)\,
which can be used to be notified when items are added, removed, or updated in the array of results.

By default, this array contains
[`NSMetadataItem`](https://developer.apple.com/documentation/foundation/nsmetadataitem)
objects, each of which represents the metadata associated with a file.
However, the query’s delegate can substitute these objects with instances of a different class.

- Important: Accessing this property implicitly disables updates, and enables updates again once the resulting array is deallocated.