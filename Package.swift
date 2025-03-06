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
          url: "https://github.com/adiscope/Adiscope-iOS-SPM-Test/releases/download/0.0.6/AdiscopeMediaMax.xcframework.zip",
          checksum: "d1dcec50d2f465c7ffa3137d3846bc2c1b50c1f8f5ead07987d803f50f176deb"
        ),
    ]
)
