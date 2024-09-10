// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "s2s_sdk_ios",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        // Define separate products for each target to keep them isolated
        .library(name: "s2s_sdk_ios_avplayer_googleAds", targets: ["s2s_sdk_ios_avplayer_googleAds"]),
        .library(name: "s2s_sdk_ios_bitmovin", targets: ["s2s_sdk_ios_bitmovin"]),
        .library(name: "s2s_sdk_ios_agent_only", targets: ["s2s_sdk_ios_agent_only"])
    ],
    targets: [
        .target(
            name: "SensicAVPlayerGoogleAds",
            dependencies: [
                .target(name: "s2s_sdk_ios_avplayer_googleAds")
            ],
            path: "Sources/s2s_sdk_ios_avplayer_googleAds"
        ),
        
        .target(
            name: "SensicBitmovin",
            dependencies: [
                .target(name: "s2s_sdk_ios_bitmovin")
            ],
            path: "Sources/s2s_sdk_ios_bitmovin"
        ),
        
        .target(
            name: "SensicAgentOnly",
            dependencies: [
                .target(name: "s2s_sdk_ios_agent_only")
            ],
            path: "Sources/s2s_sdk_ios_agent_only"
        ),
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
