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
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.20.3/s2s_sdk_ios_avplayer_googleAds.zip",
            checksum: "8b0cd12bdafbb9c86e95dd3724199a209433d568ad0447a080be36b828cb3fd8"
        ),
        .binaryTarget(
            name: "s2s_sdk_ios_bitmovin",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.20.3/s2s_sdk_ios_bitmovin.zip",
            checksum: "b50d434bacc0e5f078683fb945bf80245e61144633592c65037b2efbd0c7d276"
        ),
        .binaryTarget(
            name: "s2s_sdk_ios_agent_only",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.20.3/s2s_sdk_ios_agent_only.zip",
            checksum: "e1be080c26457108634e3467396e7e555e0324c89dc49e7058085200ae6314e8"
        ),
    ]
)