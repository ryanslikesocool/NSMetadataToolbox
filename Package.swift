// swift-tools-version: 6.0

import PackageDescription

let package = Package(
	name: "AsyncNSMetadataQuery",
	defaultLocalization: "en",
	platforms: [
		.macOS(.v10_15),
		.iOS(.v13),
		.tvOS(.v13),
		.watchOS(.v7),
		.visionOS(.v1),
		.macCatalyst(.v14),
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
