# Swift UI Kit

Modern and reusable **SwiftUI** components for building clean native iOS apps.

[![CI](https://github.com/RknDEV1/swift-ui-kit/actions/workflows/ci.yml/badge.svg)](https://github.com/RknDEV1/swift-ui-kit/actions/workflows/ci.yml)
[![Swift](https://img.shields.io/badge/Swift-5.9+-orange.svg)](https://swift.org)
[![Platform](https://img.shields.io/badge/Platform-iOS%2017%2B%20%7C%20macOS%2014%2B-blue.svg)](https://developer.apple.com)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

> Also available in Portuguese: [README.pt-BR.md](README.pt-BR.md)

---

## Components

| Component | Description |
|-----------|-------------|
| `PrimaryButton` | Main action button with loading state |
| `SecondaryButton` | Outlined secondary button |
| `ValidatedTextField` | Text field with error message support |
| `CardView` | Simple reusable card container |
| `ToastView` | Lightweight toast / banner |
| `SectionHeader` | Consistent section title and subtitle |

---

## Requirements

- iOS 17.0+
- macOS 14.0+
- Swift 5.9+
- Xcode 15+

---

## Installation

```swift
dependencies: [
    .package(url: "https://github.com/RknDEV1/swift-ui-kit.git", from: "0.1.0")
]
```

Or via Xcode:

1. **File → Add Package Dependencies…**
2. Enter `https://github.com/RknDEV1/swift-ui-kit.git`
3. Add the package to your target

---

## Usage

### Primary Button

```swift
PrimaryButton("Continue", isLoading: false) {
    // action
}
```

### Secondary Button

```swift
SecondaryButton("Cancel") {
    // action
}
```

### Validated Text Field

```swift
ValidatedTextField("Email", text: $email, errorMessage: emailError)
ValidatedTextField("Password", text: $password, isSecure: true)
```

### Card View

```swift
CardView {
    Text("Card content")
}
```

### Toast View

```swift
ToastView("Saved successfully", systemImage: "checkmark.circle")
```

### Section Header

```swift
SectionHeader("Settings", subtitle: "Manage your preferences")
```

---

## Example Screen

```swift
struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isLoading = false

    var body: some View {
        VStack(spacing: 20) {
            SectionHeader("Welcome", subtitle: "Sign in to continue")
            ValidatedTextField("Email", text: $email)
            ValidatedTextField("Password", text: $password, isSecure: true)
            PrimaryButton("Sign In", isLoading: isLoading) { }
            SecondaryButton("Create Account") { }
        }
        .padding()
    }
}
```

---

## Project Structure

```
Sources/SwiftUIKit/
├── Buttons/
├── Inputs/
├── Cards/
├── Feedback/
└── Layout/
```

---

## Changelog

See [CHANGELOG.md](CHANGELOG.md).

## License

MIT License. See [LICENSE](LICENSE).
