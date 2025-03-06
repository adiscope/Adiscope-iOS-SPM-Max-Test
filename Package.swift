// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdiscopeMediaMax",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AdiscopeMediaMax",
            targets: ["AdiscopeMediaMax"]),
    ],
    targets: [
        .binaryTarget(
          name: "AdiscopeMediaMax",
          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.0.0/AdiscopeMediaMax.zip",
          checksum: "389c0823b80f5c46e763db2c142ddbc91b34babd577fca6f31c51357d207ba3e"
        ),
    ]
)
