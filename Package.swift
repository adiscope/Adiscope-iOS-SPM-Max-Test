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
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.12/AdiscopeMediaMax.xcframework.zip",
          checksum: "fa118d1a6a29b5885f7701da8efa63d1a194ef473f3218d63ffe677e31c878ce"
        ),
    ]
)
