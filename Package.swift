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
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.19.25/s2s_sdk_ios_avplayer_googleAds.zip",
            checksum: "bf97c7b6f3a0e201c685afa31a2eaaa8bc1f3a89d8ac05f2fa0c85563a1c6bf5"
        ),
        .binaryTarget(
            name: "s2s_sdk_ios_bitmovin",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.19.25/s2s_sdk_ios_bitmovin.zip",
            checksum: "41041a97dba43b4d7c9e50b5783bf889f06b6ff0a49560b9e9668313943f3832"
        ),
        .binaryTarget(
            name: "s2s_sdk_ios_agent_only",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.19.25/s2s_sdk_ios_agent_only.zip",
            checksum: "6044765eeb44299a97760dae7c38075ceff60f6a38cf47c68dcb18f0a7f111f1"
        ),
    ]
)
