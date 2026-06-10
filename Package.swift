// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
//  Copyright © 2026 AppLovin. All rights reserved.

import PackageDescription

let package = Package(
    name: "AppLovinMediationYandexAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "AppLovinMediationYandexAdapter",
            targets: ["AppLovinMediationYandexAdapterTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", from: "13.0.0"),
        .package(url: "https://github.com/yandexmobile/yandex-ads-sdk-ios.git", exact: "8.1.0")
    ],
    targets: [
        .target(
            name: "AppLovinMediationYandexAdapterTarget",
            dependencies: [
                .target(name: "AppLovinMediationYandexAdapter"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                .product(name: "YandexMobileAds", package: "yandex-ads-sdk-ios"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AppLovinMediationYandexAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/yandex-adapter/AppLovinMediationYandexAdapter-8.1.0.1.zip",
            checksum: "9ad69191f98c2d8a8435d4efb665d1ea7a21d1a8fdfc8cb8a24903c18afab32b"
        )
    ]
)
