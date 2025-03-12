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
//            .target(name: "AdiscopeMediaMaxAdapterInMobi"),
//            .target(name: "InMobiSDK")
          ],
          path: "AdiscopeMediaMaxTarget"
        ),
        .binaryTarget(
          name: "AdiscopeMediaMax",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.15/AdiscopeMediaMax.xcframework.zip",
          checksum: "be6d3a352f2c159d3e6f34c3e6037c40ffe9d11fcb095a19eeb6a053d31a17fd"
        ),
//        .binaryTarget(
//          name: "AdiscopeMediaMaxAdapterInMobi",
//          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.15/AdiscopeMediaMaxAdapterInMobi.xcframework.zip",
//          checksum: "09ec2f081d86b82141e6e5f08f2107476c53edba21e41f7bb3a9ba8d4640fbb5"
//        ),
//        .binaryTarget(
//          name: "InMobiSDK",
//          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.15/InMobiSDK.xcframework.zip",
//          checksum: "a3dd163b1a3786becd690d4ecd0c20b8f6093af8f9a8e88f8b1f2edd93e16125"
//        ),
    ]
)
