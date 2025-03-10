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
          checksum: "25ffda0693fb2884935493f0b8a9c327fd2aa8d7adaa5d10219e5c2f1eda483a"
        ),
    ]
)
