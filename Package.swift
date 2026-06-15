// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "s2s_sdk_ios",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        // Define separate products for each target to keep them isolated
        .library(name: "AVPlayer-GoogleAds", targets: ["s2s_sdk_ios_avplayer_googleAds"]),
        .library(name: "Bitmovin", targets: ["s2s_sdk_ios_bitmovin"]),
        .library(name: "AgentOnly", targets: ["s2s_sdk_ios_agent_only"])
    ],
    targets: [
        .binaryTarget(
            name: "s2s_sdk_ios_avplayer_googleAds",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.19.20/s2s_sdk_ios_avplayer_googleAds.zip",
            checksum: "dc1fd7e444671ba3f8336206f16e0f7d2cdf0435dd6a5f6591000ca0de45b6a0"
        ),
        .binaryTarget(
            name: "s2s_sdk_ios_bitmovin",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.19.20/s2s_sdk_ios_bitmovin.zip",
            checksum: "90d1f4d485df2a83bf7008df7793f1d15bc034e6e7ac7d90d6714dc4012140c8"
        ),
        .binaryTarget(
            name: "s2s_sdk_ios_agent_only",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.19.20/s2s_sdk_ios_agent_only.zip",
            checksum: "6065ba02edb3420c2e09ebe9003efd17bb65ab8938c740582cfe363d07a9d865"
        ),
    ]
)
