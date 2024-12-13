@testable import AsyncNSMetadataQuery
import Foundation
import Testing

// struct TestAsyncNSMetadataQuery { }

// MARK: - Constants

var applicationPredicate: NSPredicate {
	let contentTypeKey: String = NSMetadataItemContentTypeKey
	let desiredContentType: String = "com.apple.application-bundle"
//	let format: String = "%@ == '%@'"
	let format: String = "\(contentTypeKey) == '\(desiredContentType)'"

	// for some reason, the format string with arguments doesn't work...

	return NSPredicate(format: format)
}

let applicationSearchScopes: [URL] = [
	URL.applicationDirectory,
	URL.userDirectory.appending(component: "Applications", directoryHint: .isDirectory),
]

// MARK: - Tests

// TODO: figure out why tests don't complete

//@Test
//func testDefaultApplicationQuery() async throws {
//	let query = NSMetadataQuery()
//	query.predicate = applicationPredicate
//	query.searchScopes = applicationSearchScopes
//
//	print("created query")
//
//	try await query.finish()
//
//	print("finished query")
//
//	print(query.results.count)
//}
