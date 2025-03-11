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
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.14/AdiscopeMediaMax.xcframework.zip",
          checksum: "14a4af2da84d06490852186a11e183fa057f351512e5e656cfdf3c27253895d5"
        ),
    ]
)
