# Swift UI Kit

Reusable **SwiftUI** components for native iOS apps.

[![CI](https://github.com/RknDEV1/swift-ui-kit/actions/workflows/ci.yml/badge.svg)](https://github.com/RknDEV1/swift-ui-kit/actions/workflows/ci.yml)
[![Swift](https://img.shields.io/badge/Swift-5.9+-orange.svg)](https://swift.org)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

> Portuguese: [README.pt-BR.md](README.pt-BR.md)

Works well with [swift-toolkit](https://github.com/RknDEV1/swift-toolkit). See also [toolkit-demo](https://github.com/RknDEV1/toolkit-demo) and [aju-util](https://github.com/RknDEV1/aju-util).

## Components

`PrimaryButton` · `SecondaryButton` · `IconButton` · `ValidatedTextField` · `CardView` · `ToastView` · `SectionHeader`

## Install

```swift
.package(url: "https://github.com/RknDEV1/swift-ui-kit.git", branch: "main")
```

## Example

```swift
PrimaryButton("Continue", isLoading: false) { }
ValidatedTextField("Email", text: $email, errorMessage: error)
CardView { Text("Content") }
```

## License

MIT
