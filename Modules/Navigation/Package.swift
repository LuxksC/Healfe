// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Navigation",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "Navigation",
            targets: ["Navigation"]),
    ],
    dependencies: [
        .package(name: "HomeFeature", path: "../Features/HomeFeature")
    ],
    targets: [
        .target(
            name: "Navigation",
            dependencies: [
                "HomeFeature"
            ]),
        .testTarget(
            name: "NavigationTests",
            dependencies: ["Navigation"]),
    ]
)
