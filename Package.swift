// swift-tools-version: 5.8

import PackageDescription

let package = Package(
	name: "NSUI",
	platforms: [
		.macOS(.v10_15),
		.macCatalyst(.v13),
		.iOS(.v13),
		.tvOS(.v13),
	],
	products: [
		.library(name: "NSUI", targets: ["NSUI"]),
	],
	dependencies: [
	],
	targets: [
		.target(name: "NSUI", dependencies: []),
		.testTarget(name: "NSUITests", dependencies: ["NSUI"]),
	]
)

let swiftSettings: [SwiftSetting] = [
	.enableExperimentalFeature("StrictConcurrency"),
]

for target in package.targets {
	var settings = target.swiftSettings ?? []
	settings.append(contentsOf: swiftSettings)
	target.swiftSettings = settings
}
