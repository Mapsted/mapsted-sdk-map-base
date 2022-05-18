// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "coremap",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "coremap",
            targets: ["coremap"]
        )
    ],
    dependencies: [
            // Here we define our package's external dependencies
            // and from where they can be fetched:
            .package(
                name: "AWSiOSSDKV2",
                url: "https://github.com/aws-amplify/aws-sdk-ios-spm",
                .upToNextMajor(from: "2.0.0")
            )
    ],
    targets: [
        .binaryTarget(
            name: "coremap",
            path: "coremap.xcframework"
        )
    ])


