// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.
//
//  Created by Hossein Asgari Seresht on 20/12/2019.
//  Copyright © 2019 Unwire. All rights reserved.
//
import PackageDescription

let package = Package(
    name: "ISHPullUp",
    platforms: [
        .iOS(.v8)
    ],
    products: [
        .library(name: "ISHPullUp", targets: ["ISHPullUp"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "ISHPullUp",
            dependencies: [],
            path: "ISHPullUp",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("**")
            ],
            linkerSettings: [
                .linkedFramework("UIKit", .when(platforms: [.iOS])),
            ]
        )
    ]
)
