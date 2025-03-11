// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdiscopeMediaMax",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AdiscopeMediaMax",
            targets: ["AdiscopeMediaMaxTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "12.4.1")
    ],
    targets: [
        .target(
          name: "AdiscopeMediaMaxTarget",
          dependencies: [
            .target(name: "AdiscopeMediaMax"),
            .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            .target(name: "AdiscopeMediaMaxAdapterBidMachine"),
            .target(name: "BidMachine")
          ],
          path: "AdiscopeMediaMaxTarget"
        ),
        .binaryTarget(
          name: "AdiscopeMediaMax",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.15/AdiscopeMediaMax.xcframework.zip",
          checksum: "be6d3a352f2c159d3e6f34c3e6037c40ffe9d11fcb095a19eeb6a053d31a17fd"
        ),
        .binaryTarget(
          name: "AdiscopeMediaMaxAdapterBidMachine",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.15/AdiscopeMediaMaxAdapterBidMachine.xcframework.zip",
          checksum: "5758579901c04e599f3592723bd7ff95b9b792c27e355bbf989d018a05cc34e8"
        ),
        .binaryTarget(
          name: "BidMachine",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.15/BidMachine.xcframework.zip",
          checksum: "4e816ef5736400e41d1dee90c466a78f108c76544f70863d1f14be98a8a91be8"
        ),
    ]
)
