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
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.20.5/s2s_sdk_ios_avplayer_googleAds.zip",
            checksum: "b7c86cd933c864645ec07c253d46ee56950b7cdf644dd85ff71fc1283c16cd1e"
        ),
        .binaryTarget(
            name: "s2s_sdk_ios_bitmovin",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.20.5/s2s_sdk_ios_bitmovin.zip",
            checksum: "7ec014bcd7630616079caaa7cada1aa8ed47b1b39bf3d2762d74107122eb37f8"
        ),
        .binaryTarget(
            name: "s2s_sdk_ios_agent_only",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.20.5/s2s_sdk_ios_agent_only.zip",
            checksum: "970bf1ad16b547a28c15e32416ab83db1351ea0e6c462dae55481dcc688a5e70"
        ),
    ]
)
