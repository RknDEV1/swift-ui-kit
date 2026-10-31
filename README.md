# Swift UI Kit

Modern reusable **SwiftUI** components for native iOS apps.

[![CI](https://github.com/RknDEV1/swift-ui-kit/actions/workflows/ci.yml/badge.svg)](https://github.com/RknDEV1/swift-ui-kit/actions/workflows/ci.yml)
[![Swift](https://img.shields.io/badge/Swift-5.9+-orange.svg)](https://swift.org)
[![Platform](https://img.shields.io/badge/Platform-iOS%2017%2B%20%7C%20macOS%2014%2B-blue.svg)](https://developer.apple.com)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

> Portuguese: [README.pt-BR.md](README.pt-BR.md)

---

## Components

| Component | Description |
|-----------|-------------|
| `PrimaryButton` | Primary action with loading state |
| `SecondaryButton` | Outlined button |
| `IconButton` | Circular SF Symbol button |
| `ValidatedTextField` | Text field with error message |
| `CardView` | Simple card container |
| `ToastView` | Lightweight toast |
| `SectionHeader` | Section title + subtitle |

---

## Installation

```swift
.package(url: "https://github.com/RknDEV1/swift-ui-kit.git", branch: "main")
```

Xcode: **File → Add Package Dependencies…** → branch **main**.

---

## Usage

```swift
PrimaryButton("Continue", isLoading: false) { }
SecondaryButton("Cancel") { }
IconButton(systemName: "gearshape") { }

ValidatedTextField("Email", text: $email, errorMessage: error)
CardView { Text("Content") }
ToastView("Saved", systemImage: "checkmark.circle")
SectionHeader("Settings", subtitle: "Preferences")
```

---

## License

MIT
