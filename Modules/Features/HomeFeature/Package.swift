// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HomeFeature",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "HomeFeature",
            targets: ["HomeFeature"]),
    ],
    dependencies: [
        .package(name: "healfe-design-system", path: "../../../../healfe-design-system")
    ],
    targets: [
        .target(
            name: "HomeFeature",
            dependencies: [
                .product(name: "DesignSystem", package: "healfe-design-system"),
            ]),
        .testTarget(
            name: "HomeFeatureTests",
            dependencies: ["HomeFeature"]),
    ]
)
