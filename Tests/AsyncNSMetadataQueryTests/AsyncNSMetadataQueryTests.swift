@testable import AsyncNSMetadataQuery
import Foundation
import Testing
import UniformTypeIdentifiers

// MARK: - Constants

var applicationPredicate: NSPredicate {
	let contentTypeKey: String = NSMetadataItemContentTypeKey
	let desiredContentType: String = UTType.image.identifier
	let format: String = "\(contentTypeKey) == '\(desiredContentType)'"

	// TODO: figure out why format with arguments throws an Obj-C exception
//	let format: String = "%@ == '%@'"

	return NSPredicate(format: format)
}

let applicationSearchScopes: [URL] = [
	URL.homeDirectory,
]

// MARK: - Tests

// TODO: figure out why tests don't complete

// @Test
// func testImageQuery() async throws {
//	let query = NSMetadataQuery()
//	query.predicate = applicationPredicate
//	query.searchScopes = applicationSearchScopes
//
//	await query.gatherResults()
//
//	print(query.results.count)
// }
