// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "AsposeWordsCloud",
    products: [
        .library(
            name: "AsposeWordsCloud",
            targets: ["AsposeWordsCloud"]),
    ],
    dependencies: [
        .package(url: "https://github.com/allegro/swift-junit.git", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "AsposeWordsCloud",
            dependencies: []),
        .testTarget(
            name: "AsposeWordsCloudTests",
            dependencies: [
                "AsposeWordsCloud",
                .product(name: "SwiftTestReporter", package: "swift-junit"),
            ]),
    ]
)

