// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "WebUntis",
    platforms: [
        .iOS(.v14), .macOS(.v11)
    ],
    products: [
        .library(
            name: "WebUntis",
            targets: ["WebUntis"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/google/promises.git", from: "1.2.0"),
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.2.0"),
        .package(url: "https://github.com/realm/realm-cocoa.git", from: "5.4.0"),
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", from: "1.3.0")
    ],
    targets: [
        .target(
            name: "WebUntis",
            dependencies: [
                .product(name: "Promises", package: "promises"),
                "Alamofire",
                .product(name: "RealmSwift", package: "realm-cocoa"),
                "CryptoSwift"
            ],
            path: "Sources/WebUntis"
        )
    ]
)
