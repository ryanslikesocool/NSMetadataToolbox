// swift-tools-version: 6.0

import PackageDescription

let package = Package(
	name: "AsyncNSMetadataQuery",
	defaultLocalization: "en",
	platforms: [
		.macOS(.v10_15),
		.iOS(.v13),
		.tvOS(.v13),
		.watchOS(.v6),
		.macCatalyst("13.1"),
		.visionOS(.v1),
	],
	products: [
		.library(name: "AsyncNSMetadataQuery", targets: ["AsyncNSMetadataQuery"]),
	],
	targets: [
		.target(name: "AsyncNSMetadataQuery"),

		.testTarget(
			name: "AsyncNSMetadataQueryTests",
			dependencies: ["AsyncNSMetadataQuery"]
		),
	]
)
