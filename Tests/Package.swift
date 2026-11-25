// swift-tools-version: 6.3
import PackageDescription

let package = Package(
    name: "AgenticAccountingTests",
    platforms: [.macOS(.v13)],
    products: [
        .executable(
            name: "t_agentic_accounting",
            targets: ["AgenticAccountingTesting"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/swift-agentic/Agentic.git", branch: "master"),
        .package(url: "https://github.com/swift-agentic/AgenticPDF.git", branch: "master"),
        .package(url: "https://github.com/swift-lco/Workspace.git", branch: "master"),
        .package(url: "https://github.com/swift-lco/Path.git", branch: "master"),
        .package(url: "https://github.com/swift-lco/IO.git", branch: "master"),
        .package(url: "https://github.com/depaix-labs/Accounting.git", branch: "master"),
        .package(url: "https://github.com/swift-tooling/Testing.git", branch: "master"),
        .package(path: ".."),
    ],
    targets: [
        .executableTarget(
            name: "AgenticAccountingTesting",
            dependencies: [
                .product(name: "AgenticAccounting", package: "AgenticAccounting"),
                .product(name: "AgenticPDF", package: "AgenticPDF"),
                .product(name: "Accounting", package: "Accounting"),
                .product(name: "Testing", package: "Testing"),
                .product(name: "Agentic", package: "Agentic"),
                .product(name: "Workspace", package: "Workspace"),
                .product(name: "Path", package: "Path"),
                .product(name: "IO", package: "IO"),
            ]
        ),
    ],
    swiftLanguageModes: [.v6]
)
