// swift-tools-version: 6.0

import PackageDescription

let package = Package(
	name: "NSUI",
	platforms: [
		.macOS(.v10_15),
		.macCatalyst(.v13),
		.iOS(.v13),
		.tvOS(.v13),
		.watchOS(.v6),
		.visionOS(.v1),
	],
	products: [
		.library(name: "NSUI", targets: ["NSUI"]),
	],
	dependencies: [
	],
	targets: [
		.target(name: "NSUI"),
		.testTarget(name: "NSUITests", dependencies: ["NSUI"]),
	]
)
