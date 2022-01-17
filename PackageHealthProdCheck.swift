// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AsposeWordsCloudHealthProdCheck",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "AsposeWordsCloudHealthProdCheck",
            targets: ["AsposeWordsCloudHealthProdCheck"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/allegro/swift-junit.git", from: "1.0.0"),
        .package(url: "https://github.com/aspose-words-cloud/aspose-words-cloud-swift.git", .branch("release"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "AsposeWordsCloudHealthProdCheck",
            dependencies: ["AsposeWordsCloud", "AsposeWordsCloudTests"]),
        .testTarget(
            name: "AsposeWordsCloudHealthProdCheckTests",
            dependencies: ["AsposeWordsCloud", "AsposeWordsCloudTests", "SwiftTestReporter"]),
    ]
)
