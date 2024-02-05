// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftWeb",
    platforms: [.macOS(.v13)],
    dependencies: [
        .package(url: "https://github.com/swift-cloud/VercelUI.git", from: "1.1.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(name: "SwiftWeb", dependencies: ["VercelUI"], path: "Sources")
    ]
)
