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
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.20.2/s2s_sdk_ios_avplayer_googleAds.zip",
            checksum: "32d95af61c947a6c60d42108c6c26caa38259f6b7928ef148113c51b34a93c8a"
        ),
        .binaryTarget(
            name: "s2s_sdk_ios_bitmovin",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.20.2/s2s_sdk_ios_bitmovin.zip",
            checksum: "2145dc4c2cda72616d8e687bc6fa4ec0eb9ba99b85201f78121f556bee746c13"
        ),
        .binaryTarget(
            name: "s2s_sdk_ios_agent_only",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.20.2/s2s_sdk_ios_agent_only.zip",
            checksum: "11f4b123b8ebbb26944fa0750a5445273b34f2f45b9b44894a96f0c1b89ac17e"
        ),
    ]
)