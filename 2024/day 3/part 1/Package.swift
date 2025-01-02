// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "part 1",
    platforms: [.macOS(.v13)],
    products: [],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "part 1",
            dependencies: ["Part1"],
            path: "Sources/",
            sources: ["main.swift"],
            resources: [.copy("../input.txt")]
        ),
        .target(
            name: "Part1",
            sources: ["Part1.swift"]
        ),
        .testTarget(
          name: "Test",
          dependencies: ["Part1"]
        )
    ]
)
