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
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "12.2.0"),
        .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager.git", exact: "7.4.4"),
        .package(url: "https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package.git", exact: "7.7.7"),
    ],
    targets: [
        .target(
          name: "AdiscopeMediaMaxTarget",
          dependencies: [
            .target(name: "AdiscopeMediaMax"),
            .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            .target(name: "AdiscopeMediaAdManager"),
            .target(name: "AdiscopeMediaAdMob"),
            .target(name: "AdiscopeMediaMaxAdapterAdManager"),
            .target(name: "AdiscopeMediaMaxAdapterAdMob"),
            .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
            .target(name: "AdiscopeMediaVungle"),
            .target(name: "AdiscopeMediaMaxAdapterVungle"),
            .product(name: "VungleAdsSDK", package: "VungleAdsSDK-SwiftPackageManager"),
            .target(name: "AdiscopeMediaMaxAdapterMobVista"),
            .product(name: "MintegralAdSDK", package: "MintegralAdSDK-Swift-Package"),
            .target(name: "AdiscopeMediaChartBoost"),
            .target(name: "ChartboostSDK"),
            .target(name: "AdiscopeMediaPangle"),
            .target(name: "AdiscopeMediaMaxAdapterPangle"),
            .target(name: "PAGAdSDK"),
            .target(name: "AdiscopeMediaMaxAdapterAmazon"),
            .target(name: "DTBiOSSDK"),
            .target(name: "AdiscopeMediaMaxAdapterDTExchange"),
            .target(name: "IASDKCore"),
            .target(name: "AdiscopeMediaMaxAdapterFan"),
            .target(name: "FBAudienceNetwork"),
            .target(name: "AdiscopeMediaMaxAdapterInMobi"),
            .target(name: "InMobiSDK"),
//            .target(name: "AdiscopeMediaMaxAdapterBidMachine"),
//            .target(name: "BidMachine"),
//            .target(name: "StackModules"),
//            .target(name: "StackProductPresentation"),
//            .target(name: "StackRendering"),
//            .target(name: "OMSDK_Appodeal"),
          ],
          resources: [.copy("PAGAdSDK.bundle")]
        ),
        .binaryTarget(
          name: "AdiscopeMediaMax",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.17/AdiscopeMediaMax.xcframework.zip",
          checksum: "d138469ba12094f6dece70b4d4cc7bc58a22aac2a569a64958edbf80b2a72833"
        ),
        .binaryTarget(
          name: "AdiscopeMediaAdManager",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.17/AdiscopeMediaAdManager.xcframework.zip",
          checksum: "240cbbd71641f9f58012f40882940a07545f3c9f832316f9c7400663d6c6ba11"
        ),
        .binaryTarget(
          name: "AdiscopeMediaAdMob",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.17/AdiscopeMediaAdMob.xcframework.zip",
          checksum: "dba4cc1cab4be771a186455b0dd358bb9e0d2a27cffd7fa44a50e182d31b160d"
        ),
        .binaryTarget(
          name: "AdiscopeMediaMaxAdapterAdManager",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.17/AdiscopeMediaMaxAdapterAdManager.xcframework.zip",
          checksum: "92817361af9d39c422419d1180e1a160c0dc1cb9c43ef566d8c059985e7098f1"
        ),
        .binaryTarget(
          name: "AdiscopeMediaMaxAdapterAdMob",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.17/AdiscopeMediaMaxAdapterAdMob.xcframework.zip",
          checksum: "5d18f8f8a417f7efd33ff3ff55637fee2a42f2077353e1d5f65f5b7aeeda4564"
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
        .binaryTarget(
          name: "AdiscopeMediaMaxAdapterMobVista",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.17/AdiscopeMediaMaxAdapterMobVista.xcframework.zip",
          checksum: "66cd382867257b7813786d5a192c9123192654edd06692b7bdc2b57e77f9673f"
        ),
        .binaryTarget(
          name: "AdiscopeMediaChartBoost",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.17/AdiscopeMediaChartBoost.xcframework.zip",
          checksum: "9ea56a0ecdf964bdf7bc8edd2f765e92000dfc643b2661c61b7522924d0a7934"
        ),
        .binaryTarget(
          name: "ChartboostSDK",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.17/ChartboostSDK.xcframework.zip",
          checksum: "768902d29c78c1dc8d7ea1da58ddd488bf33b12ef71003e9d5048bba6d60db12"
        ),
        .binaryTarget(
          name: "AdiscopeMediaPangle",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.17/AdiscopeMediaPangle.xcframework.zip",
          checksum: "2fdfe52f0158913d0d9e49f69daf3bcaf0dafb1b381a791caa3da29436d4f160"
        ),
        .binaryTarget(
          name: "AdiscopeMediaMaxAdapterPangle",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.17/AdiscopeMediaMaxAdapterPangle.xcframework.zip",
          checksum: "6bd4592e1711a544746b0f705c13f84cbefe8157f8a5a92858224ce2260dd102"
        ),
        .binaryTarget(
          name: "PAGAdSDK",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.17/PAGAdSDK.xcframework.zip",
          checksum: "fada09e83e506b29d862a9551ee746272d39f582c47ca1315d99dfcfdfb30b7e"
        ),
        .binaryTarget(
          name: "AdiscopeMediaMaxAdapterAmazon",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.17/AdiscopeMediaMaxAdapterAmazon.xcframework.zip",
          checksum: "42494ed588d9d0b65f4d03ceec50c8bdebe2c4b8d4ac356008bf7a4e2e818d0b"
        ),
        .binaryTarget(
          name: "DTBiOSSDK",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.17/DTBiOSSDK.xcframework.zip",
          checksum: "9950cf49facd8cd21c88b4d636b641c134e20674ec9c53d157c3e20783ce7c0a"
        ),
        .binaryTarget(
          name: "AdiscopeMediaMaxAdapterDTExchange",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.17/AdiscopeMediaMaxAdapterDTExchange.xcframework.zip",
          checksum: "329df9418dddfb50fc208fd50fbecc7de26d2008192cde305758033832867636"
        ),
        .binaryTarget(
          name: "IASDKCore",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.17/IASDKCore.xcframework.zip",
          checksum: "85d11954350be3f4ca9feefa3b6dc101c293f9224eda254b4c0b54f647ad5516"
        ),
        .binaryTarget(
          name: "AdiscopeMediaMaxAdapterFan",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.17/AdiscopeMediaMaxAdapterFan.xcframework.zip",
          checksum: "de7f43bf38941df7f6b184adba22b3068c96f3479e092d81388fd9077feac68c"
        ),
        .binaryTarget(
          name: "FBAudienceNetwork",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.17/FBAudienceNetwork.xcframework.zip",
          checksum: "2683b5bbfee6551a192d0e87288a0498f8311e59dfa5caf5bc29184e7ed83944"
        ),
        .binaryTarget(
          name: "AdiscopeMediaMaxAdapterInMobi",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.17/AdiscopeMediaMaxAdapterInMobi.xcframework.zip",
          checksum: "70860cb057ade879db2a4478f6ee78a93a691c9f41ab21b2de7e58f7be6b00b4"
        ),
        .binaryTarget(
          name: "InMobiSDK",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.17/InMobiSDK.xcframework.zip",
          checksum: "b78599d6bd63efe0e54e60ce3ff4437ecb083f9a30e8e072966ae7ff16308508"
        ),
//        .binaryTarget(
//          name: "AdiscopeMediaMaxAdapterBidMachine",
//          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.17/AdiscopeMediaMaxAdapterBidMachine.xcframework.zip",
//          checksum: "73d129f4153a146512430809ae2a517b03080711f20bdbfc84151ed5f9617ac4"
//        ),
//        .binaryTarget(
//          name: "BidMachine",
//          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.17/BidMachine.xcframework.zip",
//          checksum: "f1ae1028b316babbce2e50a342f14eb027a466cf13b9435a45cd9f12db6d0199"
//        ),
//        .binaryTarget(
//          name: "StackModules",
//          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.17/StackModules.xcframework.zip",
//          checksum: "eb8a9dec183f58aac5c6e491788ac4cb9ba28108227372170e5ee8946ec8987e"
//        ),
//        .binaryTarget(
//          name: "StackProductPresentation",
//          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.17/StackProductPresentation.xcframework.zip",
//          checksum: "a02793fd53eee2b187cf5703ebd71298e56375acd3daad310958fc143df14ec0"
//        ),
//        .binaryTarget(
//          name: "StackRendering",
//          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.17/StackRendering.xcframework.zip",
//          checksum: "bceb24b14dd91109f448e539d700917c45c1d80c4ac88e1f0600cadf7b3c7ff4"
//        ),
//        .binaryTarget(
//          name: "OMSDK_Appodeal",
//          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.17/OMSDK_Appodeal.xcframework.zip",
//          checksum: "d04885950dabe90354ea110f4ed8eb8e298ef38c2e53127dba900198a8b88413"
//        ),
//        .binaryTarget(
//          name: "InMobiSDK",
//          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.15/InMobiSDK.xcframework.zip",
//          checksum: "a3dd163b1a3786becd690d4ecd0c20b8f6093af8f9a8e88f8b1f2edd93e16125"
//        ),
    ]
)
