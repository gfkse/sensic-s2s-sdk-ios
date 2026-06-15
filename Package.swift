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
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.19.21/s2s_sdk_ios_avplayer_googleAds.zip",
            checksum: "dcdc346b67f18ac56b88e073a8ec6e6a2a3fb03f0b01f33972707a2ce53ca64c"
        ),
        .binaryTarget(
            name: "s2s_sdk_ios_bitmovin",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.19.21/s2s_sdk_ios_bitmovin.zip",
            checksum: "574bdc232e41a67523334a70250af72a4f6a7d306c7f64365ecff61f7dba7534"
        ),
        .binaryTarget(
            name: "s2s_sdk_ios_agent_only",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.19.21/s2s_sdk_ios_agent_only.zip",
            checksum: "d20e6dd184eaaba8030ea11e42c8b35f6005f556c92be98b0f64ea1f9039b16c"
        ),
    ]
)
