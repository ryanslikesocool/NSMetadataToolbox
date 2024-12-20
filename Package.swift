// swift-tools-version: 6.0

import PackageDescription

let package = Package(
	name: "MetadataQueryToolbox",
	defaultLocalization: "en",
	platforms: [
		.macOS(.v10_13),
		.iOS(.v12),
		.tvOS(.v12),
		.watchOS(.v4),
		.macCatalyst(.v13),
		.visionOS(.v1),
	],
	products: [
		.library(
			name: "MetadataQueryToolbox",
			targets: ["MetadataQueryToolbox"]
		),
	],
	targets: [
		.target(
			name: "MetadataQueryToolbox"
		),
	]
)
