# AppLovin MAX - iOS Yandex Mediation Adapter

The AppLovin MAX Yandex mediation adapter for iOS, distributed via Swift Package Manager.

## Requirements

- iOS 13.0+
- Xcode 15.0+
- AppLovin MAX iOS SDK 13.0.0+

## Installation

### Xcode

1. In Xcode, choose **File > Add Package Dependencies…**
2. Enter the repository URL:
   ```
   https://github.com/AppLovin/AppLovin-MAX-Swift-Package-Yandex
   ```
3. Select **Exact Version** and enter the encoded version (e.g. `8010001.0.0` for adapter version `8.1.0.1`).
4. Add the `AppLovinMediationYandexAdapter` product to your app target.

### Package.swift

```swift
dependencies: [
    .package(
        url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package-Yandex.git",
        exact: "8010001.0.0"
    )
]
```

## Included dependencies

- [`AppLovinSDK`](https://github.com/AppLovin/AppLovin-MAX-Swift-Package) (>= 13.0.0)
- [`YandexMobileAds`](https://github.com/yandexmobile/yandex-ads-sdk-ios) (pinned to the version certified for this adapter release)

## More information

- [AppLovin MAX iOS Integration Guide](https://support.axon.ai/en/max/ios/overview/integration)
