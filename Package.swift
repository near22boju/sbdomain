// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "sbdomain",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v17),
        .macOS(.v14)
    ],
    products: [
        .library(
            name: "SBDomain",
            targets: ["SBDomain"]
        ),
    ],
    targets: [
        .target(
            name: "SBDomain",
            path: "Sources/SBDomain",
            resources: [
                .process("Resources")
            ]
        ),
        .testTarget(
            name: "SBDomainTests",
            dependencies: ["SBDomain"]
        ),
    ]
)
