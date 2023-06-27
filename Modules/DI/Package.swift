// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DI",
    platforms: [.iOS(.v15)],
    products: [
        .library( name: "DI", targets: ["DI"]),
    ],
    dependencies: [
        .package(name: "HomeFeature", path: "../Features/HomeFeature"),
        .package(name: "Navigation", path: "../Navigation"),
        .package(url: "https://github.com/Swinject/Swinject.git", .upToNextMajor(from: "2.8.0"))
    ],
    targets: [
        .target(
            name: "DI",
            dependencies: [
                "HomeFeature",
                "Navigation",
                "Swinject"
            ]),
        .testTarget(
            name: "DITests",
            dependencies: ["DI"]),
    ]
)
