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
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.10/AdiscopeMediaMax.xcframework.zip",
          checksum: "4cf4c6a84d3fe57cc940e9718f8a21e5946a38489b514e9b4017b75ad7adda01"
        ),
    ]
)
