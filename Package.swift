// swift-tools-version: 6.0

import PackageDescription

let package = Package(
	name: "NSMetadataToolbox",
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
			name: "NSMetadataToolbox",
			targets: ["NSMetadataToolbox"]
		),
	],
	dependencies: [
		.package(url: "https://github.com/ryanslikesocool/DeclarativeCore.git", from: "0.0.2"),
	],
	targets: [
		.target(
			name: "NSMetadataToolbox",
			dependencies: [
				"DeclarativeCore"
			]
		),
	]
)
