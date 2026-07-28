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
        .package(url: "https://github.com/yandexmobile/yandex-ads-sdk-ios.git", exact: "8.3.0")
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
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/yandex-adapter/AppLovinMediationYandexAdapter-8.3.0.0.zip",
            checksum: "f9f36019be8129fe90f7fdb1a43abda1413befbd25a396e2f044445be5de41cd"
        )
    ]
)
