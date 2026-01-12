// swift-tools-version:6.2

import PackageDescription

extension String {
    static let iso639: Self = "ISO 639"
}

extension String { var tests: Self { self + " Tests" } }

extension Target.Dependency {
    static var iso639: Self { .target(name: .iso639) }
    static var standards: Self { .product(name: "Standard Library Extensions", package: "swift-standard-library-extensions") }
    static var incits_4_1986: Self { .product(name: "ASCII", package: "swift-ascii") }
    static var standardsTestSupport: Self { .product(name: "Test Primitives", package: "swift-test-primitives") }
}

let package = Package(
    name: "swift-iso-639",
    platforms: [
        .macOS(.v26),
        .iOS(.v26),
        .tvOS(.v26),
        .watchOS(.v26)
    ],
    products: [
        .library(name: .iso639, targets: [.iso639]),
    ],
    dependencies: [
        .package(url: "https://github.com/swift-primitives/swift-standard-library-extensions.git", from: "0.0.1"),
        .package(url: "https://github.com/swift-primitives/swift-test-primitives.git", from: "0.0.1"),
        .package(url: "https://github.com/swift-foundations/swift-ascii.git", from: "0.0.1")
    ],
    targets: [
        .target(
            name: .iso639,
            dependencies: [
                .standards,
                .incits_4_1986
            ],
            resources: [
                .copy("Resources")
            ]
        ),
        .testTarget(
            name: .iso639.tests,
            dependencies: [
                .iso639,
                .incits_4_1986,
                .standardsTestSupport
            ]
        ),
    ],
    swiftLanguageModes: [.v6]
)
