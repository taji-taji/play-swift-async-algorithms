// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftAsyncAlgorithmsSample",
    platforms: [
      .macOS("12.0")
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/apple/swift-async-algorithms", from: .init(0, 0, 1)),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .executableTarget(
            name: "SwiftAsyncAlgorithmsSample",
            dependencies: [
                .product(name: "AsyncAlgorithms", package: "swift-async-algorithms"),
            ]),
        .testTarget(
            name: "SwiftAsyncAlgorithmsSampleTests",
            dependencies: ["SwiftAsyncAlgorithmsSample"]),
    ]
)
