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
            .target(name: "AdiscopeMediaMaxAdapterInMobi"),
            .target(name: "InMobiSDK")
//            .target(name: "AdiscopeMediaMaxAdapterBidMachine"),
//            .target(name: "BidMachine"),
//            .target(name: "OMSDK_Appodeal"),
//            .target(name: "StackModules"),
//            .target(name: "StackProductPresentation"),
//            .target(name: "StackRendering")
          ],
          path: "AdiscopeMediaMaxTarget"
        ),
        .binaryTarget(
          name: "AdiscopeMediaMax",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.15/AdiscopeMediaMax.xcframework.zip",
          checksum: "be6d3a352f2c159d3e6f34c3e6037c40ffe9d11fcb095a19eeb6a053d31a17fd"
        ),
        .binaryTarget(
          name: "AdiscopeMediaMaxAdapterInMobi",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.15/AdiscopeMediaMaxAdapterInMobi.xcframework.zip",
          checksum: "09ec2f081d86b82141e6e5f08f2107476c53edba21e41f7bb3a9ba8d4640fbb5"
        ),
        .binaryTarget(
          name: "InMobiSDK",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.15/InMobiSDK.xcframework.zip",
          checksum: "a3dd163b1a3786becd690d4ecd0c20b8f6093af8f9a8e88f8b1f2edd93e16125"
        ),
//        .binaryTarget(
//          name: "AdiscopeMediaMaxAdapterBidMachine",
//          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.15/AdiscopeMediaMaxAdapterBidMachine.xcframework.zip",
//          checksum: "5758579901c04e599f3592723bd7ff95b9b792c27e355bbf989d018a05cc34e8"
//        ),
//        .binaryTarget(
//          name: "BidMachine",
//          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.15/BidMachine.xcframework.zip",
//          checksum: "4e816ef5736400e41d1dee90c466a78f108c76544f70863d1f14be98a8a91be8"
//        ),
//        .binaryTarget(
//          name: "OMSDK_Appodeal",
//          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.15/OMSDK_Appodeal.xcframework.zip",
//          checksum: "e5a332b8b6ceac932fbf6ef78c584a65ac45a3194d2d1d4ec78de8992eddcce8"
//        ),
//        .binaryTarget(
//          name: "StackModules",
//          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.15/StackModules.xcframework.zip",
//          checksum: "4188ea3c19ee58639d2a10e681e309a916e9757fb946610642b5f5050e7e1dca"
//        ),
//        .binaryTarget(
//          name: "StackProductPresentation",
//          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.15/StackProductPresentation.xcframework.zip",
//          checksum: "5d5f56a8c7fb0c2f37ccef49bceee62967d99e2293d3c8033c25aa87f27511b8"
//        ),
//        .binaryTarget(
//          name: "StackRendering",
//          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.15/StackRendering.xcframework.zip",
//          checksum: "4e77c7b0107b386eebdabcec8197f2011ca9492442d6d4b9a7d722915ba38a6e"
//        ),
    ]
)
