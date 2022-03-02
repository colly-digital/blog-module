// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "blog-module",
    platforms: [
       .macOS(.v12)
    ],
    products: [
        .library(name: "BlogModule", targets: ["BlogModule"]),
        .library(name: "BlogApi", targets: ["BlogApi"]),
    ],
    dependencies: [
        .package(url: "https://github.com/feathercms/feather-core", .revision("a54c9323416e5a45f7a2d9b4ee601444ff04f154")),
    ],
    targets: [
        .target(name: "BlogApi", dependencies: [
            .product(name: "FeatherCoreApi", package: "feather-core"),
        ]),
        .target(name: "BlogModule", dependencies: [
            .target(name: "BlogApi"),
            .product(name: "FeatherCore", package: "feather-core"),
        ],
        resources: [
            .copy("Bundle"),
        ]),
    ]
)
