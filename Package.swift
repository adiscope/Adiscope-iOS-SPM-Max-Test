// swift-tools-version: 5.9
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
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "12.2.0"),
        .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager.git", exact: "7.4.4"),
        .package(url: "https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package.git", exact: "7.7.7"),
        .package(url: "https://github.com/adiscope/Adiscope-iOS-Pangle.git", exact: "0.0.1"),
    ],
    targets: [
        .target(
            name: "AdiscopeMediaMaxTarget",
            dependencies: [
                .target(name: "AdiscopeMediaMax"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                .target(name: "AdiscopeMediaAdMob"),
                .target(name: "LiftoffMonetizeAdapter"),
                .target(name: "MetaAdapter"),
                .target(name: "MintegralAdapter"),
                .target(name: "PangleAdapter"),
                .target(name: "FBAudienceNetwork"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                .product(name: "VungleAdsSDK", package: "VungleAdsSDK-SwiftPackageManager"),
                .product(name: "MintegralAdSDK", package: "MintegralAdSDK-Swift-Package"),
                .product(name: "AdiscopeWithPangle", package: "Adiscope-iOS-Pangle"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMax",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.0/AdiscopeMediaMax.zip",
            checksum: "1d9862146d023b022db802a725f1f8373dfd65c3a64193b8be10924592fa57d4"
        ),
        .binaryTarget(
            name: "AdiscopeMediaAdMob",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.0/AdiscopeMediaAdMob.zip",
            checksum: "ad113b4a0be7aad9b2978c484dd50edcc294a0915d875ef8989a132e1666cdfd"
        ),
        .binaryTarget(
            name: "LiftoffMonetizeAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.0/LiftoffMonetizeAdapter.xcframework.zip",
            checksum: "530353e53f05c11c570b2588c74156c6bd477e4e2b103dad3d0b4c07d78f2e47"
        ),
        .binaryTarget(
            name: "MetaAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.0/MetaAdapter.xcframework.zip",
            checksum: "cc75025eb3f804c4c152cf85a9f11f7c3279c0ac539e9f7d44a5734ff280e031"
        ),
        .binaryTarget(
            name: "MintegralAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.0/MintegralAdapter.xcframework.zip",
            checksum: "bd799aa8af772cc2bccc475ca52204248a76e4d25b97746734a6a51a716c06a4"
        ),
        .binaryTarget(
            name: "PangleAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.0/PangleAdapter.xcframework.zip",
            checksum: "0ffa8c7edfa440f622be0008cf2b667aa8e9c4c00b58f66cb799112b37c3d857"
        ),
        .binaryTarget(
            name: "FBAudienceNetwork",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.0/FBAudienceNetwork.xcframework.zip",
            checksum: "2683b5bbfee6551a192d0e87288a0498f8311e59dfa5caf5bc29184e7ed83944"
        ),
    ]
)
