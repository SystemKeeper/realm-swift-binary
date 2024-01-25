// swift-tools-version:5.7.1
import PackageDescription

let realmVersion = "10.46.0"
let realmChecksum = "c429db7b2b6ea209a962930db7b28dea2134ccd7520daef9e79c6b8ca3d86a77"

let package = Package(
    name: "Realm",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(
            name: "Realm",
            targets: ["Realm"])
    ],
    targets: [
        .binaryTarget(
            name: "Realm",
            url: "https://github.com/realm/realm-swift/releases/download/v\(realmVersion)/RealmSwift@15.2.spm.zip",
            // Generate checksum with `swift package compute-checksum WebRTC.xcframework.zip`
            checksum: realmChecksum
        ),
    ]
)