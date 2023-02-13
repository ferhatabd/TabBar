// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "TabBar",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "TabBar",
            targets: ["TabBar"]
        )
    ],
    targets: [
        .target(name: "TabBar")
    ]
)
