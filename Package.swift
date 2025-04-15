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
    ],
    targets: [
        .target(
            name: "AdiscopeMediaMaxTarget",
            dependencies: [
                .target(name: "AdiscopeMediaMax"),
                .target(name: "AdiscopeAdEvent"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMax",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.0/AdiscopeMediaMax.zip",
            checksum: "1d9862146d023b022db802a725f1f8373dfd65c3a64193b8be10924592fa57d4"
        ),
        .binaryTarget(
            name: "AdiscopeAdEvent",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.0/AdiscopeAdEvent.zip",
            checksum: "69d053c142cd116ccf7b068a9e1c3be62895653127861851ace4982bb4684d03"
        ),
    ]
)
