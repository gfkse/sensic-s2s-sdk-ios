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
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.19.22/s2s_sdk_ios_avplayer_googleAds.zip",
            checksum: "6d93691a994ad1ddf7016f85698c57022bd6d93ea2d11c5daed38731d061c3f1"
        ),
        .binaryTarget(
            name: "s2s_sdk_ios_bitmovin",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.19.22/s2s_sdk_ios_bitmovin.zip",
            checksum: "b53daaffb13c618bab533038f6ca8071ab4d53db730a74aa2558f1379b48ba83"
        ),
        .binaryTarget(
            name: "s2s_sdk_ios_agent_only",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.19.22/s2s_sdk_ios_agent_only.zip",
            checksum: "175e574963028b4c8eac5c53237d2ddf5fea673ca68bd2edd75234b451c00ba8"
        ),
    ]
)
