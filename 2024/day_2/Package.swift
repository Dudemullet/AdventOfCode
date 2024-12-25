// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "day2",
    products: [
      .library(name: "day2", targets: ["day2"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
          name: "day2",
          resources: []
        ),
        .testTarget(
          name: "Test",
          dependencies: ["day2"]
        ),
        .executableTarget(
          name: "caller",
          dependencies: ["day2"],
          sources: ["main.swift"],
          resources: [.copy("input.txt")]
        )
    ]
)
