// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "TapVisualEffectViewV2",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(name: "TapVisualEffectViewV2", targets: ["TapVisualEffectViewV2"])
    ],
    dependencies: [
        .package(url: "https://github.com/Tap-Payments/TapAdditionsKitV2.git", from: "0.0.22"),
        .package(url: "https://github.com/Tap-Payments/TapNibViewV2.git", from: "0.0.4")
    ],
    targets: [
        .target(
            name: "TapVisualEffectViewV2",
            dependencies: [
                .product(name: "TapAdditionsKitV2", package: "TapAdditionsKitV2"),
                .product(name: "TapNibViewV2", package: "TapNibViewV2")
            ],
            path: "TapVisualEffectViewV2/TapVisualEffectViewV2",
            exclude: ["TapVisualEffectViewV2.h", "Info.plist"],
            sources: ["Source"],
            resources: [.process("Resources")]
        )
    ],
    swiftLanguageVersions: [.v5]
)
