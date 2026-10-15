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
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.21.0/s2s_sdk_ios_avplayer_googleAds.zip",
            checksum: "4cb2b0f3e9c02f8b6b12b1f2f3780031ab89e423d1002e86713c29c5dcbda666"
        ),
        .binaryTarget(
            name: "s2s_sdk_ios_bitmovin",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.21.0/s2s_sdk_ios_bitmovin.zip",
            checksum: "761449294c6513b316cde3a011b567c0fb62cb425c05b63e2a218ec5e6d75cef"
        ),
        .binaryTarget(
            name: "s2s_sdk_ios_agent_only",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.21.0/s2s_sdk_ios_agent_only.zip",
            checksum: "cd09d88665565311372fe6a1c9a71fcb1bcfb6625b39ab838669d23cb4e845ed"
        ),
    ]
)
