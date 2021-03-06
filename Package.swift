// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-micro",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "SwfitMicro",
            targets: ["Service"]),
    ],
    dependencies: [
        // NIO
        .package(url: "https://github.com/apple/swift-nio.git", from: "1.0.0"),
        // SwiftProtobuf
        .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.2.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "Service",
            dependencies: ["Server"]),
        .target(
            name: "Error",
            dependencies: []),
        .target(
            name: "Client",
            dependencies: []),
        .target(
            name: "Codec",
            dependencies: ["Transport"]),
        .target(
            name: "Selector",
            dependencies: []),
        .target(
            name: "Transport",
            dependencies: []),
        .target(
            name: "Server",
            dependencies: ["Error", "NIO"]),
//        .testTarget(
//            name: "swift-microTests",
//            dependencies: ["Server"]),
    ]
)
