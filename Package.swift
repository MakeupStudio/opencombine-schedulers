// swift-tools-version:5.1

import PackageDescription

let package = Package(
  name: "opencombine-schedulers",
  platforms: [
    .iOS(.v10),
    .macOS(.v10_12),
    .tvOS(.v10),
    .watchOS(.v3),
  ],
  products: [
    .library(
      name: "OpenCombineSchedulers",
      targets: ["OpenCombineSchedulers"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/OpenCombine/OpenCombine.git", from: "0.11.0")
  ],
  targets: [
    .target(
      name: "OpenCombineSchedulers",
      dependencies: ["OpenCombine", "OpenCombineDispatch", "OpenCombineFoundation"]
    ),
    .testTarget(
      name: "OpenCombineSchedulersTests",
      dependencies: ["OpenCombineSchedulers"]
    ),
  ]
)
