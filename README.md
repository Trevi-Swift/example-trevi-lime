# LimeExample

[![Swift 2.2](https://img.shields.io/badge/Swift-2.2-orange.svg?style=flat)](https://developer.apple.com/swift/)
[![Mac OS X](https://img.shields.io/badge/platform-osx-lightgrey.svg?style=flat)](https://developer.apple.com/swift/)
[![Ubuntu](https://img.shields.io/badge/platform-linux-lightgrey.svg?style=flat)](http://www.ubuntu.com/)
![Apache 2](https://img.shields.io/badge/license-Apache2-blue.svg?style=flat)

## Overview
An example project for Lime. See instructions for installation & usage on [Lime](https://github.com/Trevi-Swift/Trevi-lime).

## Swift version
Trevi works with the latest version of Swift 2.2 Snapshot. You can download Swift binaries on [here](https://swift.org/download/#latest-development-snapshots).

## Usage
1. Build this example :
    - Mac OS X :
		```bash
		swift build -Xcc -fblocks -Xswiftc -I/usr/local/include -Xlinker -L/usr/local/lib
		```
    - Ubuntu :
		```bash
		swift build -Xcc -fblocks
		```

2. Execute the result excutable is located in `.build/debug` :
	```bash
	./.build/debug/LimeExample
	```

3. Open your browser at [http://localhost:8080](http://localhost:8080)

4. You should see message Listening on port 8080

## Versioning
TreviSys follows the semantic versioning scheme. The API change and backwards compatibility rules are those indicated by SemVer.

## License
This library is licensed under Apache 2.0. Full license text is available in [LICENSE](LICENSE.txt).
