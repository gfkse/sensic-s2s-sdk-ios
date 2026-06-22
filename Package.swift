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
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.19.23/s2s_sdk_ios_avplayer_googleAds.zip",
            checksum: "2d0000eee13f0363f26a52190372e52064798ad7ef5557aadd95c8066b9af251"
        ),
        .binaryTarget(
            name: "s2s_sdk_ios_bitmovin",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.19.23/s2s_sdk_ios_bitmovin.zip",
            checksum: "46590813bae295b7fe7b20e5b27224a551ee6375bf98cc6c772c2487c9e232f2"
        ),
        .binaryTarget(
            name: "s2s_sdk_ios_agent_only",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.19.23/s2s_sdk_ios_agent_only.zip",
            checksum: "8adab0d2b485211a49e76f65880b4774427546032f32fe082ae40ccadf8f0195"
        ),
    ]
)
