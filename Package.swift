// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BoxoSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "BoxoSDK", targets: ["BoxoSDK", "Lottie", "_BoxoSDKStub"])
    ],
    targets: [
        .binaryTarget(
            name: "BoxoSDK",
            path: "BoxoSDK.xcframework"
        ),
        .binaryTarget(
            name: "Lottie",
            path: "Lottie.xcframework"
        ),
        .target(
            name: "_BoxoSDKStub",
            dependencies: ["BoxoSDK", "Lottie"],
            path: "Sources/_BoxoSDKStub"
        )
    ]
)