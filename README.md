# Swift UI Kit

Modern and reusable **SwiftUI** components for native iOS apps.

## Components

- `PrimaryButton` – Main action button with loading state
- `SecondaryButton` – Outlined secondary button
- `ValidatedTextField` – Text field with error message support
- `CardView` – Simple card container
- `ToastView` – Lightweight toast / banner
- `SectionHeader` – Consistent section titles

## Requirements

- iOS 17+
- macOS 14+
- Swift 5.9+

## Installation

```swift
.package(url: "https://github.com/RknDEV1/swift-ui-kit.git", from: "0.1.0")
```

## Usage

```swift
PrimaryButton("Continuar", isLoading: false) {
    // action
}

SecondaryButton("Cancelar") {
    // action
}

ValidatedTextField("E-mail", text: $email, errorMessage: emailError)

CardView {
    Text("Conteúdo do card")
}

ToastView("Salvo com sucesso", systemImage: "checkmark.circle")

SectionHeader("Configurações", subtitle: "Gerencie suas preferências")
```

## Structure

```
Sources/SwiftUIKit/
├── Buttons/
├── Inputs/
├── Cards/
├── Feedback/
└── Layout/
```

## License

MIT
