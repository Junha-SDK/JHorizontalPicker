// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "JHorizontalPicker",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "JHorizontalPicker",
            targets: ["JHorizontalPicker"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Junha-SDK/JUtile", from: "0.0.2"),
        .package(url: "https://github.com/devxoul/Then", from: "3.0.0"),
        .package(url: "https://github.com/SnapKit/SnapKit.git", from: "5.0.1"),
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "6.0.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        
        .target(
            name: "JHorizontalPicker",
            dependencies: [
                "JUtile",
                "Then",
                "SnapKit",
                .product(name: "RxSwift", package: "RxSwift"),
                .product(name: "RxCocoa", package: "RxSwift")
            ],
            path: "Sources/JHorizontalPicker"
        ),
        .testTarget(
            name: "JHorizontalPickerTests",
            dependencies: ["JHorizontalPicker"]),
    ]
)
