// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "SwiftUIKit",
    platforms: [
        .iOS(.v17),
        .macOS(.v14)
    ],
    products: [
        .library(
            name: "SwiftUIKit",
            targets: ["SwiftUIKit"]
        ),
    ],
    targets: [
        .target(
            name: "SwiftUIKit",
            path: "Sources/SwiftUIKit"
        ),
        .testTarget(
            name: "SwiftUIKitTests",
            dependencies: ["SwiftUIKit"],
            path: "Tests/SwiftUIKitTests"
        ),
    ]
)
