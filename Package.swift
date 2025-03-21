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
            .target(name: "LiftoffMonetizeAdapter"),
            .target(name: "MetaAdapter"),
            .target(name: "MintegralAdapter"),
            .target(name: "PangleAdapter"),
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
            .target(name: "AdiscopeMediaMaxAdapterMoloco"),
            .target(name: "MolocoSDK"),
            .target(name: "AdiscopeMediaMaxAdapterOgury"),
            .target(name: "OgurySdk"),
            .target(name: "OguryAds"),
            .target(name: "OguryCore"),
            .target(name: "OMSDK_Ogury"),
            .target(name: "AdiscopeMediaMaxAdapterBidMachine"),
            .target(name: "BidMachine"),
            .target(name: "StackModules"),
            .target(name: "StackProductPresentation"),
            .target(name: "StackRendering"),
            .target(name: "OMSDK_Appodeal"),
          ],
          resources: [.copy("PAGAdSDK.bundle")]
        ),
        .binaryTarget(
          name: "AdiscopeMediaMax",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.18/AdiscopeMediaMax.xcframework.zip",
          checksum: "d138469ba12094f6dece70b4d4cc7bc58a22aac2a569a64958edbf80b2a72833"
        ),
        .binaryTarget(
          name: "AdiscopeMediaAdManager",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.18/AdiscopeMediaAdManager.xcframework.zip",
          checksum: "240cbbd71641f9f58012f40882940a07545f3c9f832316f9c7400663d6c6ba11"
        ),
        .binaryTarget(
          name: "AdiscopeMediaAdMob",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.18/AdiscopeMediaAdMob.xcframework.zip",
          checksum: "dba4cc1cab4be771a186455b0dd358bb9e0d2a27cffd7fa44a50e182d31b160d"
        ),
        .binaryTarget(
          name: "AdiscopeMediaMaxAdapterAdManager",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.18/AdiscopeMediaMaxAdapterAdManager.xcframework.zip",
          checksum: "92817361af9d39c422419d1180e1a160c0dc1cb9c43ef566d8c059985e7098f1"
        ),
        .binaryTarget(
          name: "AdiscopeMediaMaxAdapterAdMob",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.18/AdiscopeMediaMaxAdapterAdMob.xcframework.zip",
          checksum: "5d18f8f8a417f7efd33ff3ff55637fee2a42f2077353e1d5f65f5b7aeeda4564"
        ),
        .binaryTarget(
          name: "LiftoffMonetizeAdapter",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.18/LiftoffMonetizeAdapter.xcframework.zip",
          checksum: "530353e53f05c11c570b2588c74156c6bd477e4e2b103dad3d0b4c07d78f2e47"
        ),
        .binaryTarget(
          name: "MetaAdapter",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.18/MetaAdapter.xcframework.zip",
          checksum: "cc75025eb3f804c4c152cf85a9f11f7c3279c0ac539e9f7d44a5734ff280e031"
        ),
        .binaryTarget(
          name: "MintegralAdapter",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.18/MintegralAdapter.xcframework.zip",
          checksum: "bd799aa8af772cc2bccc475ca52204248a76e4d25b97746734a6a51a716c06a4"
        ),
        .binaryTarget(
          name: "PangleAdapter",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.18/PangleAdapter.xcframework.zip",
          checksum: "f4cbbd2d462a183aadc494b0426b7a9831eb50e39adfdcf7c3fed166c4fed74d"
        ),
        .binaryTarget(
          name: "AdiscopeMediaVungle",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.18/AdiscopeMediaVungle.xcframework.zip",
          checksum: "c82cf8162a77878e12048d9ff87a69895e5395d9954da9d873cde0336bb27a49"
        ),
        .binaryTarget(
          name: "AdiscopeMediaMaxAdapterVungle",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.18/AdiscopeMediaMaxAdapterVungle.xcframework.zip",
          checksum: "ff8314141d8b68ed1560ea11c6374c129b7fa77e2e3c18bf2c01f3b99385d1a5"
        ),
        .binaryTarget(
          name: "AdiscopeMediaMaxAdapterMobVista",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.18/AdiscopeMediaMaxAdapterMobVista.xcframework.zip",
          checksum: "66cd382867257b7813786d5a192c9123192654edd06692b7bdc2b57e77f9673f"
        ),
        .binaryTarget(
          name: "AdiscopeMediaChartBoost",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.18/AdiscopeMediaChartBoost.xcframework.zip",
          checksum: "9ea56a0ecdf964bdf7bc8edd2f765e92000dfc643b2661c61b7522924d0a7934"
        ),
        .binaryTarget(
          name: "ChartboostSDK",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.18/ChartboostSDK.xcframework.zip",
          checksum: "768902d29c78c1dc8d7ea1da58ddd488bf33b12ef71003e9d5048bba6d60db12"
        ),
        .binaryTarget(
          name: "AdiscopeMediaPangle",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.18/AdiscopeMediaPangle.xcframework.zip",
          checksum: "2fdfe52f0158913d0d9e49f69daf3bcaf0dafb1b381a791caa3da29436d4f160"
        ),
        .binaryTarget(
          name: "AdiscopeMediaMaxAdapterPangle",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.18/AdiscopeMediaMaxAdapterPangle.xcframework.zip",
          checksum: "6bd4592e1711a544746b0f705c13f84cbefe8157f8a5a92858224ce2260dd102"
        ),
        .binaryTarget(
          name: "PAGAdSDK",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.18/PAGAdSDK.xcframework.zip",
          checksum: "fada09e83e506b29d862a9551ee746272d39f582c47ca1315d99dfcfdfb30b7e"
        ),
        .binaryTarget(
          name: "AdiscopeMediaMaxAdapterAmazon",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.18/AdiscopeMediaMaxAdapterAmazon.xcframework.zip",
          checksum: "42494ed588d9d0b65f4d03ceec50c8bdebe2c4b8d4ac356008bf7a4e2e818d0b"
        ),
        .binaryTarget(
          name: "DTBiOSSDK",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.18/DTBiOSSDK.xcframework.zip",
          checksum: "9950cf49facd8cd21c88b4d636b641c134e20674ec9c53d157c3e20783ce7c0a"
        ),
        .binaryTarget(
          name: "AdiscopeMediaMaxAdapterDTExchange",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.18/AdiscopeMediaMaxAdapterDTExchange.xcframework.zip",
          checksum: "329df9418dddfb50fc208fd50fbecc7de26d2008192cde305758033832867636"
        ),
        .binaryTarget(
          name: "IASDKCore",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.18/IASDKCore.xcframework.zip",
          checksum: "85d11954350be3f4ca9feefa3b6dc101c293f9224eda254b4c0b54f647ad5516"
        ),
        .binaryTarget(
          name: "AdiscopeMediaMaxAdapterFan",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.18/AdiscopeMediaMaxAdapterFan.xcframework.zip",
          checksum: "de7f43bf38941df7f6b184adba22b3068c96f3479e092d81388fd9077feac68c"
        ),
        .binaryTarget(
          name: "FBAudienceNetwork",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.18/FBAudienceNetwork.xcframework.zip",
          checksum: "2683b5bbfee6551a192d0e87288a0498f8311e59dfa5caf5bc29184e7ed83944"
        ),
        .binaryTarget(
          name: "AdiscopeMediaMaxAdapterInMobi",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.18/AdiscopeMediaMaxAdapterInMobi.xcframework.zip",
          checksum: "70860cb057ade879db2a4478f6ee78a93a691c9f41ab21b2de7e58f7be6b00b4"
        ),
        .binaryTarget(
          name: "InMobiSDK",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.18/InMobiSDK.xcframework.zip",
          checksum: "b78599d6bd63efe0e54e60ce3ff4437ecb083f9a30e8e072966ae7ff16308508"
        ),
        .binaryTarget(
          name: "AdiscopeMediaMaxAdapterMoloco",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.18/AdiscopeMediaMaxAdapterMoloco.xcframework.zip",
          checksum: "faf6d82691323659e37825fb92f2d61c5c2a48a00acdd40a507cad4544b1a406"
        ),
        .binaryTarget(
          name: "MolocoSDK",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.18/MolocoSDK.xcframework.zip",
          checksum: "764bb21a59487831ec167e813150c3b2aeb6256c73aea84dc60eac754d7d91b3"
        ),
        .binaryTarget(
          name: "AdiscopeMediaMaxAdapterOgury",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.18/AdiscopeMediaMaxAdapterOgury.xcframework.zip",
          checksum: "5a1a3a6d9a07b5780724f3991c9cacbba71543a191740fef334af5a30bd5dd91"
        ),
        .binaryTarget(
          name: "OgurySdk",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.18/OgurySdk.xcframework.zip",
          checksum: "e2bfcc17917f340c0bc31f539b29317744299521dcf004b22509439746921d9b"
        ),
        .binaryTarget(
          name: "OguryAds",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.18/OguryAds.xcframework.zip",
          checksum: "d4298c39c9ce602e51f687b763dd5ef76b5a4fa575f5897b5e59cc73f5e04d89"
        ),
        .binaryTarget(
          name: "OguryCore",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.18/OguryCore.xcframework.zip",
          checksum: "9d6f45f5bdf09190c5e2ccde66473f4a8096608e716b9ec1dff6ec8043b3c065"
        ),
        .binaryTarget(
          name: "OMSDK_Ogury",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.18/OMSDK_Ogury.xcframework.zip",
          checksum: "4be345fd2d19cbe03cc62b87dc05815389462984de3650f78da21034995385ba"
        ),
        .binaryTarget(
          name: "AdiscopeMediaMaxAdapterBidMachine",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.18/AdiscopeMediaMaxAdapterBidMachine.xcframework.zip",
          checksum: "59e72d61bf8c43467a63aec45a68ed3b343ff11c0467d62e3331ad48fdc12a02"
        ),
        .binaryTarget(
          name: "BidMachine",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.18/BidMachine.xcframework.zip",
          checksum: "533a71179005f633d9bb5fd77458288422b9fa181e298268b3ab3090ce8e85ff"
        ),
        .binaryTarget(
          name: "StackModules",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.18/StackModules.xcframework.zip",
          checksum: "59bda311dd845dc5a46ffd42560157ff3f348c80f3b6a54a0b66c10cf9ae5773"
        ),
        .binaryTarget(
          name: "StackProductPresentation",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.18/StackProductPresentation.xcframework.zip",
          checksum: "ceccacaa6c8d745a63290930bc352c138aada3f1ba26799f53d3206db5b1f41c"
        ),
        .binaryTarget(
          name: "StackRendering",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.18/StackRendering.xcframework.zip",
          checksum: "ab5ca9f1b0b09a52188628bbfc39e5a1592e21d3daea8d872fc08370068d1509"
        ),
        .binaryTarget(
          name: "OMSDK_Appodeal",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.18/OMSDK_Appodeal.xcframework.zip",
          checksum: "d04885950dabe90354ea110f4ed8eb8e298ef38c2e53127dba900198a8b88413"
        ),
    ]
)
