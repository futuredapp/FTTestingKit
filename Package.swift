// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "FTTestingKit",
    products: [
        .library(
            name: "FTTestingKit",
            targets: ["FTTestingKit"]
        ),
        .library(
            name: "FTTestingKitPromiseKit",
            targets: ["FTTestingKitPromiseKit"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/mxcl/PromiseKit.git", from: "6.11.0")
    ],
    targets: [
        .target(
            name: "FTTestingKit",
            dependencies: []
        ),
        .target(
            name: "FTTestingKitPromiseKit",
            dependencies: ["FTTestingKit", "PromiseKit"]
        ),
        .testTarget(
            name: "FTTestingKitTests",
            dependencies: ["FTTestingKit"]
        ),
        .testTarget(
            name: "FTTestingKitPromiseKitTests",
            dependencies: ["FTTestingKitPromiseKit"]
        )
    ]
)
