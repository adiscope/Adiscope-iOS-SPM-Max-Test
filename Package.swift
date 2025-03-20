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
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.1.0"),
        .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager.git", exact: "7.4.4"),
    ],
    targets: [
        .target(
          name: "AdiscopeMediaMaxTarget",
          dependencies: [
            .target(name: "AdiscopeMediaMax"),
            .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            .target(name: "AdiscopeMediaVungle"),
            .target(name: "AdiscopeMediaMaxAdapterVungle"),
            .product(name: "VungleAdsSDK", package: "VungleAdsSDK-SwiftPackageManager"),
          ],
          path: "AdiscopeMediaMaxTarget"
        ),
        .binaryTarget(
          name: "AdiscopeMediaMax",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.17/AdiscopeMediaMax.xcframework.zip",
          checksum: "d138469ba12094f6dece70b4d4cc7bc58a22aac2a569a64958edbf80b2a72833"
        ),
        .binaryTarget(
          name: "AdiscopeMediaVungle",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.17/AdiscopeMediaVungle.xcframework.zip",
          checksum: "c82cf8162a77878e12048d9ff87a69895e5395d9954da9d873cde0336bb27a49"
        ),
        .binaryTarget(
          name: "AdiscopeMediaMaxAdapterVungle",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.17/AdiscopeMediaMaxAdapterVungle.xcframework.zip",
          checksum: "ff8314141d8b68ed1560ea11c6374c129b7fa77e2e3c18bf2c01f3b99385d1a5"
        ),
//        .binaryTarget(
//          name: "InMobiSDK",
//          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.15/InMobiSDK.xcframework.zip",
//          checksum: "a3dd163b1a3786becd690d4ecd0c20b8f6093af8f9a8e88f8b1f2edd93e16125"
//        ),
    ]
)
