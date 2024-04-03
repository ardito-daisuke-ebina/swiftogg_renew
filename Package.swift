// swift-tools-version:5.5.0
import PackageDescription

let package = Package(
    name: "SwiftOGG",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(name: "SwiftOGG", targets: ["SwiftOGG", "Copustools"]),
    ],
    dependencies: [
        .package(
            name: "YbridOpus",
            url: "https://github.com/vector-im/opus-swift",
            from: "0.8.4"),
        .package(
            name: "YbridOgg",
            url: "https://github.com/vector-im/ogg-swift.git",
            from: "0.8.3")
    ],
    targets: [
        // To debug with a local framework
//        .binaryTarget(name: "YbridOpus", path: "YbridOpus.xcframework"),
        .target(name: "Copustools", path: "Sources/SupportingFiles/Dependencies/Copustools", publicHeadersPath: "include", cSettings: [.headerSearchPath("include")]),
        .target(name: "SwiftOGG", dependencies: ["YbridOpus", "YbridOgg", "Copustools"], path: "Sources/SwiftOGG"),
    ]
)
