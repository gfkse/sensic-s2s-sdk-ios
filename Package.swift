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
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.20.4/s2s_sdk_ios_avplayer_googleAds.zip",
            checksum: "1d4a3c7efd97c1be49c9417fd8d0d9843ea3c15321399891b6f2e974848331fc"
        ),
        .binaryTarget(
            name: "s2s_sdk_ios_bitmovin",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.20.4/s2s_sdk_ios_bitmovin.zip",
            checksum: "6bcadba506b824a4a2436c65cd2d0ec2b7519519d5c80b7de950c26d82ad44c9"
        ),
        .binaryTarget(
            name: "s2s_sdk_ios_agent_only",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.20.4/s2s_sdk_ios_agent_only.zip",
            checksum: "80719be275f91d0381eec9aed293a6a1ffe229e993851fdacfcd4f21bd1f4180"
        ),
    ]
)