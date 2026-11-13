// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
//  Copyright © 2026 AppLovin. All rights reserved.

import PackageDescription

let package = Package(
    name: "AppLovinMediationYandexAdapter",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "AppLovinMediationYandexAdapter",
            targets: ["AppLovinMediationYandexAdapterTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", from: "13.0.0"),
        .package(url: "https://github.com/yandexmobile/yandex-ads-sdk-ios.git", exact: "8.7.0")
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
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/yandex-adapter/AppLovinMediationYandexAdapter-8.7.0.0.zip",
            checksum: "38de41de1d4653cc20ef8db974785d875aa312f3bb5e5c2e349d43e27d4a96ef"
        )
    ]
)
