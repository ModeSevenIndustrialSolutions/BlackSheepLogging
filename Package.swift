// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BlackSheepLogging",
    products: [
        .library(name: "BlackSheepLogging", targets: ["BlackSheepLogging"])
    ],
    targets: [
        .target(name: "BlackSheepLogging", path: "Sources"),
        .testTarget(name: "BlackSheepLoggingTests", dependencies: ["BlackSheepLogging"]),
    ],
    swiftLanguageVersions: [.v5]
)
