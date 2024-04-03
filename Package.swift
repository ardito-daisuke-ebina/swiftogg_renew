// swift-tools-version:5.5.0
import PackageDescription

let package = Package(
    name: "SwiftOGG",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(name: "SwiftOGG", targets: ["SwiftOGG"]),
    ],
    dependencies: [
        .package(
            name: "YbridOpus",
            url: "https://github.com/vector-im/opus-swift",
            from: "0.8.4"),
        .package(
            name: "YbridOgg",
            url: "https://github.com/vector-im/ogg-swift.git",
            from: "0.8.3"),
        .package(
            name: "Copustools",
            url: "https://github.com/ardito-daisuke-ebina/swift-ogg.git",
            from: "1.0.1")
    ],
    targets: [
        .target(name: "SwiftOGG", dependencies: ["YbridOpus", "YbridOgg", "Copustools"], path: "Sources/SwiftOGG"),
    ]
)
