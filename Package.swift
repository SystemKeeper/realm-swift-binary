// swift-tools-version:5.7.1
import PackageDescription

let realmVersion = "10.46.0"

// Generate checksum with `swift package compute-checksum Realm.spm.zip`
let realmChecksum = "a2d8978b65757e862af326846b550c2e314f821fb7485573b72ac18c2d20006c"

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
            url: "https://github.com/realm/realm-swift/releases/download/v\(realmVersion)/Realm.spm.zip",
            checksum: realmChecksum
        ),
    ]
)