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
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.3.1"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "12.8.0"),
        .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager.git", exact: "7.5.2"),
        .package(url: "https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package.git", exact: "7.7.9"),
        .package(url: "https://github.com/bytedance/AdsGlobalPackage.git", exact: "7.4.1-release.1"),
    ],
    targets: [
        .target(
          name: "AdiscopeMediaMaxTarget",
          dependencies: [
            .target(name: "AdiscopeMediaMax"),
            .target(name: "AdiscopeMediaAdManager"),
            .target(name: "AdiscopeMediaAdMob"),
            .target(name: "AdiscopeMediaChartBoost"),
            .target(name: "AdiscopeMediaMaxAdapterAdManager"),
            .target(name: "AdiscopeMediaMaxAdapterAdMob"),
            .target(name: "AdiscopeMediaMaxAdapterAmazon"),
            .target(name: "AdiscopeMediaMaxAdapterBidMachine"),
            .target(name: "AdiscopeMediaMaxAdapterChartBoost"),
//            .target(name: "AdiscopeMediaMaxAdapterFan"),
            .target(name: "AdiscopeMediaMaxAdapterInMobi"),
            .target(name: "AdiscopeMediaMaxAdapterIronSource"),
            .target(name: "AdiscopeMediaMaxAdapterMobVista"),
            .target(name: "AdiscopeMediaMaxAdapterMoloco"),
            .target(name: "AdiscopeMediaMaxAdapterOgury"),
            .target(name: "AdiscopeMediaMaxAdapterPangle"),
            .target(name: "AdiscopeMediaMaxAdapterUnityAds"),
            .target(name: "AdiscopeMediaMaxAdapterVungle"),
            .target(name: "AdiscopeMediaPangle"),
            .target(name: "AdiscopeMediaVungle"),
            .target(name: "AppLovinMediationAmazonAdMarketplaceAdapter"),
            .target(name: "AppLovinMediationBidMachineAdapter"),
            .target(name: "AppLovinMediationByteDanceAdapter"),
            .target(name: "AppLovinMediationChartboostAdapter"),
            .target(name: "AppLovinMediationIronSourceAdapter"),
            .target(name: "AppLovinMediationMolocoAdapter"),
            .target(name: "AppLovinMediationOguryPresageAdapter"),
            .target(name: "AppLovinMediationUnityAdsAdapter"),
            .target(name: "AppLovinMediationVungleAdapter"),
            .target(name: "BidMachine"),
            .target(name: "ChartboostSDK"),
            .target(name: "DTBiOSSDK"),
//            .target(name: "FBAudienceNetwork"),
            .target(name: "InMobiSDK"),
            .target(name: "IronSource"),
            .target(name: "LiftoffMonetizeAdapter"),
//            .target(name: "MetaAdapter"),
            .target(name: "MintegralAdapter"),
            .target(name: "MolocoSDK"),
            .target(name: "OguryAds"),
            .target(name: "OguryCore"),
            .target(name: "OgurySdk"),
            .target(name: "OMSDK_Appodeal"),
            .target(name: "OMSDK_Ogury"),
            .target(name: "PangleAdapter"),
            .target(name: "StackModules"),
            .target(name: "StackProductPresentation"),
            .target(name: "StackRendering"),
            .target(name: "UnityAds"),
            .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
            .product(name: "VungleAdsSDK", package: "VungleAdsSDK-SwiftPackageManager"),
            .product(name: "AdsGlobalPackage", package: "AdsGlobalPackage"),
            .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            .product(name: "MintegralAdSDK", package: "MintegralAdSDK-Swift-Package"),
//            .target(name: "TnkRwdSdk2"),
          ],
          path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMax",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/AdiscopeMediaMax.zip",
            checksum: "e9c8f8dff393e80c0c204fcae2569d94314ff6409d8b9f7bb23833914af327dc"
        ),
        .binaryTarget(
            name: "AdiscopeMediaAdManager",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/AdiscopeMediaAdManager.zip",
            checksum: "34d5209cda6305375de8a053904f5faeecbc2162f9c95aeedeff206def44ea48"
        ),
        .binaryTarget(
            name: "AdiscopeMediaAdMob",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/AdiscopeMediaAdMob.zip",
            checksum: "e2dbbab8a331b5106dadf035d03546fe6be005c7d651aad517851ca175a68ab5"
        ),
        .binaryTarget(
            name: "AdiscopeMediaChartBoost",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/AdiscopeMediaChartBoost.zip",
            checksum: "bc0df083f134bee6784df47ef8d7a0ccea284d650d8b33f88401ac0f206ffd9f"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAdManager",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/AdiscopeMediaMaxAdapterAdManager.zip",
            checksum: "63dc18ac2a21607532161b723800ce12e27afdddf9724d5063a86a003d988ad9"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAdMob",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/AdiscopeMediaMaxAdapterAdMob.zip",
            checksum: "41d18419a7d3d7023018f32ea2c7a063a8b3bf95d9f7ae20ee57fee946f38f95"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAmazon",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/AdiscopeMediaMaxAdapterAmazon.zip",
            checksum: "89c03b3cf0e30743329909de6c3f68e3e40e46ea502bdea736f37e9576487952"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterBidMachine",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/AdiscopeMediaMaxAdapterBidMachine.zip",
            checksum: "8f4ead60f8382f20c057ae785b78ba268ccb19bd2a2ad95e1342b9922f16b2fe"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterChartBoost",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/AdiscopeMediaMaxAdapterChartBoost.zip",
            checksum: "0a3ccea123f8987a87747ff7aff9a2640836c99afc14f09a852b2c992332e24a"
        ),
//        .binaryTarget(
//          name: "AdiscopeMediaMaxAdapterFan",
//          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/AdiscopeMediaMaxAdapterFan.zip",
//          checksum: "f323d50244d91ee3cb84015b048c09cee3bfbd460d15f164c5745270088ab245"
//        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterInMobi",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/AdiscopeMediaMaxAdapterInMobi.zip",
            checksum: "22c46fd4dfef39103d22d9bdaad7bc4cf5699e763b8c5636629ec61c4faf88b6"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterIronSource",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/AdiscopeMediaMaxAdapterIronSource.zip",
            checksum: "5d7195f22278ac06873e300e4bc56699c0a5b158c7b34d3d3369fae1d9c1b99b"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterMobVista",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/AdiscopeMediaMaxAdapterMobVista.zip",
            checksum: "89a88dd0395fa87f1d2954207f621e722fae429b8948786f1d6583e001d4cb4b"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterMoloco",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/AdiscopeMediaMaxAdapterMoloco.zip",
            checksum: "1cd8527651aaebe1b12c40d8e7bfaee86010965cafec1f18c758cbb83358dfad"
        ),
        .binaryTarget(
          name: "AdiscopeMediaMaxAdapterOgury",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/AdiscopeMediaMaxAdapterOgury.zip",
          checksum: "54d5ce327413abae1ac19641c5fd9a066ea148a36ab40794693d978ac7370fd0"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterPangle",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/AdiscopeMediaMaxAdapterPangle.zip",
            checksum: "aeb9a6039224e79fd4c7385148e2ee967337c6b9ad9bd13d745af7980b4e0caa"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterUnityAds",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/AdiscopeMediaMaxAdapterUnityAds.zip",
            checksum: "4092165ed068bb6162381e0886a97df35d6bd4c99665853a5729e6220c6ff818"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterVungle",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/AdiscopeMediaMaxAdapterVungle.zip",
            checksum: "5016195d755caf46ff6289a2e1426a9f58e6c19ba50e3aafea1088899eb3a85a"
        ),
        .binaryTarget(
            name: "AdiscopeMediaPangle",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/AdiscopeMediaPangle.zip",
            checksum: "6b523659255eaaf61abaa647fad88dcb35f6b2f797434b8dd0c3e0c3693e3086"
        ),
        .binaryTarget(
            name: "AdiscopeMediaVungle",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/AdiscopeMediaVungle.zip",
            checksum: "fcfe74bbd79c448b58d8e0098862567cdb0f204f0ac8ff7b81489e75c4c667aa"
        ),
        .binaryTarget(
            name: "AppLovinMediationAmazonAdMarketplaceAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/AppLovinMediationAmazonAdMarketplaceAdapter.xcframework.zip",
            checksum: "b64851324b5a940c000a236d80ccbdaffb6589568f59ba238f0af2e24ec0054d"
        ),
        .binaryTarget(
            name: "AppLovinMediationBidMachineAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/AppLovinMediationBidMachineAdapter.xcframework.zip",
            checksum: "67a84a7eaad57ef1d2cd72ba83b01e3f60dabde96737b7901a30601fe0271167"
        ),
        .binaryTarget(
            name: "AppLovinMediationByteDanceAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/AppLovinMediationByteDanceAdapter.xcframework.zip",
            checksum: "727a914fce19a2417f1c2baeafc494b198870674011c5141826bc40d386cd161"
        ),
        .binaryTarget(
            name: "AppLovinMediationChartboostAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/AppLovinMediationChartboostAdapter.xcframework.zip",
            checksum: "5016d28bd3f2ff6cc3060cef0fbb577646653c2d8b8d7e5c55d7ff5e99268b9a"
        ),
        .binaryTarget(
            name: "AppLovinMediationIronSourceAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/AppLovinMediationIronSourceAdapter.xcframework.zip",
            checksum: "226aef4b5df15f174f68e83dfa6fa676f89808061564d2f98196deb7cc8c0212"
        ),
        .binaryTarget(
            name: "AppLovinMediationMolocoAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/AppLovinMediationMolocoAdapter.xcframework.zip",
            checksum: "ef7538705ef0db8a678c7a8656104b2ab19d6e40451b5fd4399db544dbb78c74"
        ),
        .binaryTarget(
            name: "AppLovinMediationOguryPresageAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/AppLovinMediationOguryPresageAdapter.xcframework.zip",
            checksum: "b69837a132084e168fabd6793b21721072a70fc9910b5cc51dbc9b45ec1313f4"
        ),
        .binaryTarget(
            name: "AppLovinMediationUnityAdsAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/AppLovinMediationUnityAdsAdapter.xcframework.zip",
            checksum: "8ef5b036f428688482fff798720ac6be8e95d4a774ef61f96dd8608ef32ad32c"
        ),
        .binaryTarget(
            name: "AppLovinMediationVungleAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/AppLovinMediationVungleAdapter.xcframework.zip",
            checksum: "3f8e3cd7d019ac2c47ff4fc92760b170da415e8663f5bb9d84956692d63ee44a"
        ),
        .binaryTarget(
            name: "BidMachine",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/BidMachine.xcframework.zip",
            checksum: "36c428f6fb2362f29460ce396df7a6f01646739bd6b453452205c875ff4b6b30"
        ),
        .binaryTarget(
            name: "ChartboostSDK",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/ChartboostSDK.xcframework.zip",
            checksum: "2c6b2d4863c2fbf9ac6110876c5f53ccb6f90edbf877c574cb0377347dd3fc6c"
        ),
        .binaryTarget(
            name: "DTBiOSSDK",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/DTBiOSSDK.xcframework.zip",
            checksum: "d81f5f96d2a52ead6255cab0e512d158950df51ccaa0798295a061ab60885728"
        ),
        .binaryTarget(
          name: "FBAudienceNetwork",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/FBAudienceNetwork.zip",
          checksum: "1866e97e8eea4c7ff47c331adc1ecf1d4efe46c31961dbd7a1cea04577dcd18f"
        ),
        .binaryTarget(
            name: "InMobiSDK",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/InMobiSDK.xcframework.zip",
            checksum: "460f1528c87f83d870f8f8386a27b9ff3a01f724d38698dfd53230380d81f7a5"
        ),
        .binaryTarget(
            name: "IronSource",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/IronSource.xcframework.zip",
            checksum: "9229f60e1b2f68ba24f3e1f15aa6ac9446e02d8df2c514b7606ae4eb6eebe1dd"
        ),
        .binaryTarget(
            name: "LiftoffMonetizeAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/LiftoffMonetizeAdapter.xcframework.zip",
            checksum: "a94830825d143e45ce75267c778d4d533a83f30aa63f720a9384cafbdcd6405b"
        ),
//        .binaryTarget(
//          name: "MetaAdapter",
//          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/MetaAdapter.xcframework.zip",
//          checksum: "f819697e635460e297d20d871fc5f2623526418dc1710d89be8356e9004d1bdb"
//        ),
        .binaryTarget(
            name: "MintegralAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/MintegralAdapter.xcframework.zip",
            checksum: "cee6e2e785f6e0ce272f57e532f18d8adee2cd113de69f3038c2c2b6976a79d1"
        ),
        .binaryTarget(
            name: "MolocoSDK",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/MolocoSDK.xcframework.zip",
            checksum: "ae4cd71e08637f962cf98c5fdb6c05ce0623109503d2c87a722ff9e909568520"
        ),
        .binaryTarget(
          name: "OguryAds",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/OguryAds.xcframework.zip",
          checksum: "fff525e07e0d8d734a5e8c7a9116ebfd7a605ab7f44de442faaf5f7b4feda6db"
        ),
        .binaryTarget(
          name: "OguryCore",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/OguryCore.xcframework.zip",
          checksum: "c5cbfff01627f7ad9d8aefc24c6b3f198504b49818b8e955fe77c1d3b014b130"
        ),
        .binaryTarget(
          name: "OgurySdk",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/OgurySdk.xcframework.zip",
          checksum: "c4585eba834b7f0a45ab8b30256358c7641cc7e99ca8dc6eb65c2d807063ac66"
        ),
        .binaryTarget(
            name: "OMSDK_Appodeal",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/OMSDK_Appodeal.xcframework.zip",
            checksum: "fd651e252800f6bdc2e29b0be0d6b7a4bb61fe02b260f25f0219f7a5954b88a2"
        ),
        .binaryTarget(
          name: "OMSDK_Ogury",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/OMSDK_Ogury.xcframework.zip",
          checksum: "f81dbdab5d8a6fef35e7afbe903c04815881b9bda2fd1dc112ebdb5cd3be4918"
        ),
        .binaryTarget(
            name: "PangleAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/PangleAdapter.xcframework.zip",
            checksum: "28382aa1f0866fc7302adc85070ff2a4dd5c9719e13c3b05390c5952b4121893"
        ),
        .binaryTarget(
            name: "StackModules",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/StackModules.xcframework.zip",
            checksum: "8b99916ec01993238ea1c6c71861971485874ab444de2c32d414bf34cc4de1f1"
        ),
        .binaryTarget(
            name: "StackProductPresentation",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/StackProductPresentation.xcframework.zip",
            checksum: "91c8d0c16539a4250b255338198a568d8c6bcb5a158af891a801e22e7ba726c6"
        ),
        .binaryTarget(
            name: "StackRendering",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/StackRendering.xcframework.zip",
            checksum: "aa5443daeac933bfe8bdface040d3597f15a5d7f88f649970399317fc2f74def"
        ),
        .binaryTarget(
            name: "UnityAds",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.5/UnityAds.xcframework.zip",
            checksum: "349471cbc4f18847bd37293e6735cd1e89c25a7fc4b5c5882a1e333611c085a1"
        ),
////        .binaryTarget(
////            name: "TnkRwdSdk2",
////            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.1/TnkRwdSdk2.xcframework.zip",
////            checksum: "689caf4d9d8443bc286e5bf30ea8f553c7bfa7a8127b325de636780e0bcea319"
////        ),
    ]
)
