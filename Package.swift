// swift-tools-version:5.8
import PackageDescription
 
let package = Package(
    name: "Tude",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "Tude",
            targets: ["TudeSDK"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "10.12.0")
    ],
    targets: [
        .target(
            name: "TudeSDK",
            dependencies: [
                "Tude",
                "PrebidMobile",
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")
            ],
            path: "Tude"
        ),
        .binaryTarget(
            name: "Tude",
            path: "Tude.xcframework"
        ),
        .binaryTarget(
            name: "PrebidMobile",
            path: "PrebidMobile.xcframework"
        )
    ]
)
