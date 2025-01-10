// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift",
    platforms: [
        .macOS(.v10_15)
    ],
    dependencies: [
        // Adding Vapor as a dependency with version 4.61.0
        .package(url: "https://github.com/vapor/vapor.git", exact: "4.61.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "swift",
            dependencies: [
                // Adding Vapor as a dependency to the target
                .product(name: "Vapor", package: "vapor")
            ]
        ),
    ]
)