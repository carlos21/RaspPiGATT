// swift-tools-version:3.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RaspPiGATT",
    targets: [
        Target(name: "RaspPiGATT")
    ],
    dependencies: [
        .Package(url: "git@github.com:PureSwift/GATT.git", "1.7.0")
    ]
)

#if os(macOS)
let dependency: Package.Dependency = .Package(url: "https://github.com/PureSwift/BluetoothDarwin.git", majorVersion: 1)
package.dependencies.append(dependency)
#elseif os(Linux)
let dependency: Package.Dependency = .Package(url: "https://github.com/PureSwift/BluetoothLinux.git", majorVersion: 3)
package.dependencies.append(dependency)
#endif
