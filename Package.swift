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
            targets: ["_Tude"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "10.11.0")
    ],
    targets: [
        .target(
            name: "_Tude",
            dependencies: [
                "Tude",
                "PrebidMobile",
                "AmazonPublisherServicesSDK",
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
        ),
        .binaryTarget(
            name: "AmazonPublisherServicesSDK",
            url: "https://mdtb-sdk-packages.s3-us-west-2.amazonaws.com/iOS_APS_SDK/APS_iOS_SDK-4.7.6.zip",
            checksum: "1c2d8b472314915b72e1e6f8817ef699312365fcf5c571fc2a9d9109e1031598"
        )
    ]
)
