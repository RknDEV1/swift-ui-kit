# Swift UI Kit

Modern and reusable **SwiftUI** components for building clean native iOS apps.

[![Swift](https://img.shields.io/badge/Swift-5.9+-orange.svg)](https://swift.org)
[![Platform](https://img.shields.io/badge/Platform-iOS%2017%2B%20%7C%20macOS%2014%2B-blue.svg)](https://developer.apple.com)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

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

### Swift Package Manager

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
    // perform action
}

PrimaryButton("Saving...", isLoading: true) {
    // disabled while loading
}
```

### Secondary Button

```swift
SecondaryButton("Cancel") {
    // perform action
}
```

### Validated Text Field

```swift
@State private var email = ""
@State private var emailError: String?

ValidatedTextField(
    "Email",
    text: $email,
    errorMessage: emailError
)

ValidatedTextField(
    "Password",
    text: $password,
    isSecure: true,
    errorMessage: passwordError
)
```

### Card View

```swift
CardView {
    VStack(alignment: .leading, spacing: 8) {
        Text("Title")
            .font(.headline)
        Text("Supporting content goes here.")
            .foregroundStyle(.secondary)
    }
}
```

### Toast View

```swift
ToastView("Saved successfully", systemImage: "checkmark.circle")

ToastView("Something went wrong", systemImage: "xmark.circle")
```

### Section Header

```swift
SectionHeader(
    "Settings",
    subtitle: "Manage your preferences"
)
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

            PrimaryButton("Sign In", isLoading: isLoading) {
                // login action
            }

            SecondaryButton("Create Account") {
                // navigate
            }
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
│   ├── PrimaryButton.swift
│   └── SecondaryButton.swift
├── Inputs/
│   └── ValidatedTextField.swift
├── Cards/
│   └── CardView.swift
├── Feedback/
│   └── ToastView.swift
└── Layout/
    └── SectionHeader.swift
```

---

## Design Principles

- **Simple API** – Easy to use with sensible defaults
- **Consistent styling** – Shared corner radius, spacing and colors
- **Composable** – Works well with other SwiftUI views
- **Lightweight** – No external dependencies

---

## License

This project is released under the **MIT License**. See [LICENSE](LICENSE) for details.

---

## Contributing

Contributions are welcome. Feel free to open issues or submit pull requests.
