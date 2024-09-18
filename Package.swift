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
            path: "./s2s_sdk_ios_avplayer_googleAds.xcframework"
        ),
        .binaryTarget(
            name: "s2s_sdk_ios_bitmovin",
            path: "./s2s_sdk_ios_bitmovin.xcframework"
        ),
        .binaryTarget(
            name: "s2s_sdk_ios_agent_only",
            path: "./s2s_sdk_ios_agent_only.xcframework"
        ),
    ]
)
