// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "NSUI",
	platforms: [
		.macOS(.v10_15),
		.iOS(.v11),
		.tvOS(.v11),
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
