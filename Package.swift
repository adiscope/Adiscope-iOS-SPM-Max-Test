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
            .product(name: "AdiscopeWithPangle", package: "Adiscope-iOS-Pangle"),
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
            .target(name: "AdiscopeMediaMaxAdapterUnityAds"),
            .target(name: "UnityAds"),
          ],
          path: "Sources"
        ),
        .binaryTarget(
          name: "AdiscopeMediaMax",
          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/AdiscopeMediaMax.zip",
          checksum: "1d9862146d023b022db802a725f1f8373dfd65c3a64193b8be10924592fa57d4"
        ),
        .binaryTarget(
          name: "AdiscopeMediaAdManager",
          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/AdiscopeMediaAdManager.zip",
          checksum: "d4532298f790bf12f64a74792243853b541bff4cbb1153546aa9814dd81793f8"
        ),
        .binaryTarget(
          name: "AdiscopeMediaAdMob",
          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/AdiscopeMediaAdMob.zip",
          checksum: "ad113b4a0be7aad9b2978c484dd50edcc294a0915d875ef8989a132e1666cdfd"
        ),
        .binaryTarget(
          name: "AdiscopeMediaMaxAdapterAdManager",
          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/AdiscopeMediaMaxAdapterAdManager.zip",
          checksum: "67960934aa2918cc6d47e71e6110cb3aff23706bffcf22dbb75bdb94c1394615"
        ),
        .binaryTarget(
          name: "AdiscopeMediaMaxAdapterAdMob",
          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/AdiscopeMediaMaxAdapterAdMob.zip",
          checksum: "12ff608a06a2aa9f9ff3bf5c1c64a2fdede6c253dc767a19e90a11f23ff2ec03"
        ),
        .binaryTarget(
          name: "LiftoffMonetizeAdapter",
          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/LiftoffMonetizeAdapter.xcframework.zip",
          checksum: "530353e53f05c11c570b2588c74156c6bd477e4e2b103dad3d0b4c07d78f2e47"
        ),
        .binaryTarget(
          name: "MetaAdapter",
          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/MetaAdapter.xcframework.zip",
          checksum: "cc75025eb3f804c4c152cf85a9f11f7c3279c0ac539e9f7d44a5734ff280e031"
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
          name: "AdiscopeMediaVungle",
          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/AdiscopeMediaVungle.zip",
          checksum: "421d7d1e0b264c239bc6f6f7ce67081fb9592dc67dd017a05423d21335d468de"
        ),
        .binaryTarget(
          name: "AdiscopeMediaMaxAdapterVungle",
          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/AdiscopeMediaMaxAdapterVungle.zip",
          checksum: "c1b89bf34d7f371c3215d8a2027237245669a7a1d7e679426eb034aceb5bb171"
        ),
        .binaryTarget(
          name: "AdiscopeMediaMaxAdapterMobVista",
          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/AdiscopeMediaMaxAdapterMobVista.zip",
          checksum: "be7f1df67b2c4da29b671a93cb713c39453749fb255038f0437be0fecca8ee54"
        ),
        .binaryTarget(
          name: "AdiscopeMediaChartBoost",
          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/AdiscopeMediaChartBoost.zip",
          checksum: "841c1bc563f316ba8b6b2fcb389602209d39afa1c8a468a7e07960dc25393b4f"
        ),
        .binaryTarget(
          name: "ChartboostSDK",
          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/ChartboostSDK.xcframework.zip",
          checksum: "768902d29c78c1dc8d7ea1da58ddd488bf33b12ef71003e9d5048bba6d60db12"
        ),
        .binaryTarget(
          name: "AdiscopeMediaPangle",
          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/AdiscopeMediaPangle.zip",
          checksum: "623303673d1588369aa66d00861df3ed1326847cc33a476bb0ec90e96f3c1ca5"
        ),
        .binaryTarget(
          name: "AdiscopeMediaMaxAdapterPangle",
          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/AdiscopeMediaMaxAdapterPangle.zip",
          checksum: "8c6083983a17fb3e415def55fda533bd29918675779691390657581abd57c152"
        ),
        .binaryTarget(
          name: "AdiscopeMediaMaxAdapterAmazon",
          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/AdiscopeMediaMaxAdapterAmazon.zip",
          checksum: "3fa53a852e76923a4df46bd42d4f4b0b54c4fa332b4d19fe6b52e67ceade82ab"
        ),
        .binaryTarget(
          name: "DTBiOSSDK",
          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/DTBiOSSDK.xcframework.zip",
          checksum: "9950cf49facd8cd21c88b4d636b641c134e20674ec9c53d157c3e20783ce7c0a"
        ),
        .binaryTarget(
          name: "AdiscopeMediaMaxAdapterDTExchange",
          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/AdiscopeMediaMaxAdapterDTExchange.zip",
          checksum: "0d47d6ee4f7e7a381f81fe97e1d8b1f4873090ecfac0b9b798345e6eccf38acd"
        ),
        .binaryTarget(
          name: "IASDKCore",
          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/IASDKCore.xcframework.zip",
          checksum: "85d11954350be3f4ca9feefa3b6dc101c293f9224eda254b4c0b54f647ad5516"
        ),
        .binaryTarget(
          name: "AdiscopeMediaMaxAdapterFan",
          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/AdiscopeMediaMaxAdapterFan.zip",
          checksum: "06e54d7d9c897537e1c3be9bd66db2d0d68c538e2a5b65703a982259d576211e"
        ),
        .binaryTarget(
          name: "FBAudienceNetwork",
          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/FBAudienceNetwork.xcframework.zip",
          checksum: "2683b5bbfee6551a192d0e87288a0498f8311e59dfa5caf5bc29184e7ed83944"
        ),
        .binaryTarget(
          name: "AdiscopeMediaMaxAdapterInMobi",
          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/AdiscopeMediaMaxAdapterInMobi.zip",
          checksum: "8ee4e04fe8c87cd62170fc6637a0ddbb765134997ef97943aaaa87cb518c6102"
        ),
        .binaryTarget(
          name: "InMobiSDK",
          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/InMobiSDK.xcframework.zip",
          checksum: "b78599d6bd63efe0e54e60ce3ff4437ecb083f9a30e8e072966ae7ff16308508"
        ),
        .binaryTarget(
          name: "AdiscopeMediaMaxAdapterMoloco",
          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/AdiscopeMediaMaxAdapterMoloco.zip",
          checksum: "6b0c2e8869745ef9e4c20293412c0823c8921c4b2115ecbe2b6683187c8caff6"
        ),
        .binaryTarget(
          name: "MolocoSDK",
          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/MolocoSDK.xcframework.zip",
          checksum: "764bb21a59487831ec167e813150c3b2aeb6256c73aea84dc60eac754d7d91b3"
        ),
        .binaryTarget(
          name: "AdiscopeMediaMaxAdapterOgury",
          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/AdiscopeMediaMaxAdapterOgury.zip",
          checksum: "f7ce77510feffcb61d474e8a0ffe4c79343b2ad852542a9217fe5264f8973185"
        ),
        .binaryTarget(
          name: "OgurySdk",
          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/OgurySdk.xcframework.zip",
          checksum: "e2bfcc17917f340c0bc31f539b29317744299521dcf004b22509439746921d9b"
        ),
        .binaryTarget(
          name: "OguryAds",
          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/OguryAds.xcframework.zip",
          checksum: "d4298c39c9ce602e51f687b763dd5ef76b5a4fa575f5897b5e59cc73f5e04d89"
        ),
        .binaryTarget(
          name: "OguryCore",
          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/OguryCore.xcframework.zip",
          checksum: "9d6f45f5bdf09190c5e2ccde66473f4a8096608e716b9ec1dff6ec8043b3c065"
        ),
        .binaryTarget(
          name: "OMSDK_Ogury",
          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/OMSDK_Ogury.xcframework.zip",
          checksum: "4be345fd2d19cbe03cc62b87dc05815389462984de3650f78da21034995385ba"
        ),
        .binaryTarget(
          name: "AdiscopeMediaMaxAdapterBidMachine",
          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/AdiscopeMediaMaxAdapterBidMachine.zip",
          checksum: "f2cb65282455c15a2c0cdd4b4a917398ed8780447359c40c3a4e311db2acdaf5"
        ),
        .binaryTarget(
          name: "BidMachine",
          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/BidMachine.xcframework.zip",
          checksum: "0bed28eec0a194a8e6b99bd5c178b459024a95ad4c83be1bb1b949579c038c0e"
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
          name: "AdiscopeMediaMaxAdapterUnityAds",
          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/AdiscopeMediaMaxAdapterUnityAds.zip",
          checksum: "271bdd2664614d88581ab6affbe3eaefe1d3db6a5dac4cad6869a6abf89d3eff"
        ),
        .binaryTarget(
          name: "UnityAds",
          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/UnityAds.xcframework.zip",
          checksum: "1f482a2dbb154abf881e524de103a1bf64b7a426b7bd07d615d6fdd61bcea5fb"
        ),
    ]
)
