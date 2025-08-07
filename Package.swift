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
//        .package(url: "https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package.git", exact: "7.7.7"),
        .package(url: "https://github.com/adiscope/Adiscope-iOS-Pangle.git", exact: "4.2.0"),
    ],
    targets: [
        .target(
          name: "AdiscopeMediaMaxTarget",
          dependencies: [
            .target(name: "AdiscopeMediaMax"),
            .target(name: "AdiscopeAdEvent"),
            .target(name: "AdiscopeMediaAdManager"),
            .target(name: "AdiscopeMediaAdMob"),
            .target(name: "AdiscopeMediaChartBoost"),
            .target(name: "AdiscopeMediaPangle"),
            .target(name: "AdiscopeMediaVungle"),
            .target(name: "AdiscopeMediaMaxAdapterAdManager"),
            .target(name: "AdiscopeMediaMaxAdapterAdMob"),
            .target(name: "AdiscopeMediaMaxAdapterAmazon"),
            .target(name: "AdiscopeMediaMaxAdapterBidMachine"),
            .target(name: "AdiscopeMediaMaxAdapterChartBoost"),
            .target(name: "AdiscopeMediaMaxAdapterInMobi"),
            .target(name: "AdiscopeMediaMaxAdapterIronSource"),
//            .target(name: "AdiscopeMediaMaxAdapterMobVista"),
            .target(name: "AdiscopeMediaMaxAdapterMoloco"),
            .target(name: "AdiscopeMediaMaxAdapterPangle"),
            .target(name: "AdiscopeMediaMaxAdapterUnityAds"),
            .target(name: "AdiscopeMediaMaxAdapterVungle"),
//            .target(name: "AdiscopeMediaMaxAdapterFan"),
//            .target(name: "FBAudienceNetwork"),
//            .target(name: "MetaAdapter"),
//            .target(name: "AdiscopeMediaMaxAdapterOgury"),
//            .target(name: "OgurySdk"),
//            .target(name: "OguryAds"),
//            .target(name: "OguryCore"),
//            .target(name: "OMSDK_Ogury"),
            .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
            .target(name: "LiftoffMonetizeAdapter"),
            .target(name: "MintegralAdapter"),
            .target(name: "PangleAdapter"),
            .target(name: "ChartboostSDK"),
            .product(name: "VungleAdsSDK", package: "VungleAdsSDK-SwiftPackageManager"),
            .product(name: "AdiscopeWithPangle", package: "Adiscope-iOS-Pangle"),
            .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            .target(name: "DTBiOSSDK"),
            .target(name: "BidMachine"),
            .target(name: "InMobiSDK"),
            .target(name: "IronSource"),
//            .product(name: "MintegralAdSDK", package: "MintegralAdSDK-Swift-Package"),
            .target(name: "MolocoSDK"),
            .target(name: "StackModules"),
            .target(name: "StackProductPresentation"),
            .target(name: "StackRendering"),
            .target(name: "OMSDK_Appodeal"),
            .target(name: "UnityAds"),
          ],
          path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMax",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.1/AdiscopeMediaMax.zip",
            checksum: "51bf4b20477d8a2c7cc6b1187701492b03bb01f69abf2ba65fcc3c92cf653c81"
        ),
        .binaryTarget(
            name: "AdiscopeAdEvent",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.1/AdiscopeAdEvent.zip",
            checksum: "2133c39c0185985a047b8718ed4751f9cd66616c230278177c8d3c0bb79a50ca"
        ),
        .binaryTarget(
            name: "AdiscopeMediaAdManager",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.1/AdiscopeMediaAdManager.zip",
            checksum: "8dc4c6749eb96c620c13b5e1611c2673a4ba977dae4916e63dc4bb9a680584b8"
        ),
        .binaryTarget(
            name: "AdiscopeMediaAdMob",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.1/AdiscopeMediaAdMob.zip",
            checksum: "bcb7ec28df96d77fb0849b1aea092a79eff38deecfce3013d8f13cd7353161f4"
        ),
        .binaryTarget(
            name: "AdiscopeMediaChartBoost",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.1/AdiscopeMediaChartBoost.zip",
            checksum: "3078974d7332252a376776d47a2b49d3e7aa4801c63aaf3f9a410617a9c5600b"
        ),
        .binaryTarget(
            name: "AdiscopeMediaPangle",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.1/AdiscopeMediaPangle.zip",
            checksum: "937395191ca8f44acb746fa01339c09315a07aff0dc7f0f1fadf046ed7ba14b3"
        ),
        .binaryTarget(
            name: "AdiscopeMediaVungle",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.1/AdiscopeMediaVungle.zip",
            checksum: "2763478efff51c3e186f0aabca6c8f918938957e5d4f9aae999363f49de445f9"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAdManager",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.1/AdiscopeMediaMaxAdapterAdManager.zip",
            checksum: "5876b92ecadca4d85d1f490c5901a23b6aa6cfc219a9304520f71c896c3d526c"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAdMob",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.1/AdiscopeMediaMaxAdapterAdMob.zip",
            checksum: "a2b9727411a0cc1d3db798a3a80aab3a96ff5a4cbe451f211dc47e1b6856fcf1"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAmazon",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.1/AdiscopeMediaMaxAdapterAmazon.zip",
            checksum: "a06bb1f25d251fae1ba9ade8e3901c022f37d2b4024354f749cdc31bbe582f95"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterBidMachine",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.1/AdiscopeMediaMaxAdapterBidMachine.zip",
            checksum: "a8151a72e44616580a342a21f2f7ed97f771f68e3e417f92e68f45fe832f5891"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterChartBoost",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.1/AdiscopeMediaMaxAdapterChartBoost.zip",
            checksum: "d67843bd6b519e515af570e9a724677a1b556a75631c6348149a68fdd4d3a86c"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterInMobi",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.1/AdiscopeMediaMaxAdapterInMobi.zip",
            checksum: "82d26c18e1b8723026fcffc84ac49326d51bc874529c260c34aeff6aaec7cb13"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterIronSource",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.1/AdiscopeMediaMaxAdapterIronSource.zip",
            checksum: "d2db318d283de9d95978f0fdbe67edeb0b6eefa1b2cd5586061bc27fb058b31b"
        ),
//        .binaryTarget(
//            name: "AdiscopeMediaMaxAdapterMobVista",
//            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.1/AdiscopeMediaMaxAdapterMobVista.zip",
//            checksum: "c1c1ef81a589f01e98f3bad93752722119d4e9d829b500f381f128e63cbba12e"
//        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterMoloco",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.1/AdiscopeMediaMaxAdapterMoloco.zip",
            checksum: "656ac474d5b80cd58e33cef5170433079cf52f3d5ad4176f6bc7dfdc6059e8ae"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterPangle",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.1/AdiscopeMediaMaxAdapterPangle.zip",
            checksum: "f69b9886fbcd9d02680fe6182c7f26a0e1bf0d4ae258c6d92d41a1a275ec7fe9"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterUnityAds",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.1/AdiscopeMediaMaxAdapterUnityAds.zip",
            checksum: "b2e70de73a631a30c6b6311baf798a787f472beb3df8aae8c0430631cbd98352"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterVungle",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.1/AdiscopeMediaMaxAdapterVungle.zip",
            checksum: "cbaf5157d590c8d1fd1460f8586a157d89363f9e5232f2414db29ae02eebc739"
        ),
//        .binaryTarget(
//          name: "AdiscopeMediaMaxAdapterFan",
//          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/AdiscopeMediaMaxAdapterFan.zip",
//          checksum: "06e54d7d9c897537e1c3be9bd66db2d0d68c538e2a5b65703a982259d576211e"
//        ),
//        .binaryTarget(
//          name: "FBAudienceNetwork",
//          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/FBAudienceNetwork.zip",
//          checksum: "d876b66ebf127643cfe0849763014017fdd71f2c4be07c313a3a39b797967e78"
//        ),
//        .binaryTarget(
//          name: "MetaAdapter",
//          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/MetaAdapter.xcframework.zip",
//          checksum: "cc75025eb3f804c4c152cf85a9f11f7c3279c0ac539e9f7d44a5734ff280e031"
//        ),
//        .binaryTarget(
//          name: "AdiscopeMediaMaxAdapterOgury",
//          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/AdiscopeMediaMaxAdapterOgury.zip",
//          checksum: "f7ce77510feffcb61d474e8a0ffe4c79343b2ad852542a9217fe5264f8973185"
//        ),
//        .binaryTarget(
//          name: "OgurySdk",
//          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/OgurySdk.xcframework.zip",
//          checksum: "e2bfcc17917f340c0bc31f539b29317744299521dcf004b22509439746921d9b"
//        ),
//        .binaryTarget(
//          name: "OguryAds",
//          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/OguryAds.xcframework.zip",
//          checksum: "d4298c39c9ce602e51f687b763dd5ef76b5a4fa575f5897b5e59cc73f5e04d89"
//        ),
//        .binaryTarget(
//          name: "OguryCore",
//          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/OguryCore.xcframework.zip",
//          checksum: "9d6f45f5bdf09190c5e2ccde66473f4a8096608e716b9ec1dff6ec8043b3c065"
//        ),
//        .binaryTarget(
//          name: "OMSDK_Ogury",
//          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/OMSDK_Ogury.xcframework.zip",
//          checksum: "4be345fd2d19cbe03cc62b87dc05815389462984de3650f78da21034995385ba"
//        ),
        .binaryTarget(
            name: "LiftoffMonetizeAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/LiftoffMonetizeAdapter.xcframework.zip",
            checksum: "530353e53f05c11c570b2588c74156c6bd477e4e2b103dad3d0b4c07d78f2e47"
        ),
        .binaryTarget(
            name: "MintegralAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/MintegralAdapter.xcframework.zip",
            checksum: "bd799aa8af772cc2bccc475ca52204248a76e4d25b97746734a6a51a716c06a4"
        ),
        .binaryTarget(
            name: "PangleAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/PangleAdapter.xcframework.zip",
            checksum: "0ffa8c7edfa440f622be0008cf2b667aa8e9c4c00b58f66cb799112b37c3d857"
        ),
        .binaryTarget(
            name: "DTBiOSSDK",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/DTBiOSSDK.xcframework.zip",
            checksum: "9950cf49facd8cd21c88b4d636b641c134e20674ec9c53d157c3e20783ce7c0a"
        ),
        .binaryTarget(
            name: "BidMachine",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/BidMachine.xcframework.zip",
            checksum: "0bed28eec0a194a8e6b99bd5c178b459024a95ad4c83be1bb1b949579c038c0e"
        ),
        .binaryTarget(
            name: "ChartboostSDK",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/ChartboostSDK.xcframework.zip",
            checksum: "768902d29c78c1dc8d7ea1da58ddd488bf33b12ef71003e9d5048bba6d60db12"
        ),
        .binaryTarget(
            name: "InMobiSDK",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/InMobiSDK.xcframework.zip",
            checksum: "b78599d6bd63efe0e54e60ce3ff4437ecb083f9a30e8e072966ae7ff16308508"
        ),
        .binaryTarget(
            name: "IronSource",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.1/IronSource.xcframework.zip",
            checksum: "58623ab79861b8d8405ad56cdf60057611131f4d412f3157c32821bf1f0b00e8"
        ),
        .binaryTarget(
            name: "MolocoSDK",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/MolocoSDK.xcframework.zip",
            checksum: "764bb21a59487831ec167e813150c3b2aeb6256c73aea84dc60eac754d7d91b3"
        ),
        .binaryTarget(
            name: "StackModules",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/StackModules.xcframework.zip",
            checksum: "55c3ffcbf330c581afb2290c615441eff9c72d44f5b5ee30ed987f342cc43e77"
        ),
        .binaryTarget(
            name: "StackProductPresentation",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/StackProductPresentation.xcframework.zip",
            checksum: "c14278e0945b200afdf3864cae289a14b65a8e9c301b657caae1d5bb5ef06905"
        ),
        .binaryTarget(
            name: "StackRendering",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/StackRendering.xcframework.zip",
            checksum: "436a5aea2c46ac3fc06e5e901dad6a7df702564d3ceefb4ee8fd0e65947ad5e6"
        ),
        .binaryTarget(
            name: "OMSDK_Appodeal",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/OMSDK_Appodeal.xcframework.zip",
            checksum: "8b03911438e9bee6fb36aa56a29008abc2ac91fd37af4ca0d99f13ade25caccf"
        ),
        .binaryTarget(
            name: "UnityAds",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/UnityAds.xcframework.zip",
            checksum: "1f482a2dbb154abf881e524de103a1bf64b7a426b7bd07d615d6fdd61bcea5fb"
        ),
    ]
)
