# Swift UI Kit

Componentes **SwiftUI** modernos e reutilizáveis para aplicativos iOS nativos.

## Componentes

- `PrimaryButton` – Botão principal com estado de loading
- `SecondaryButton` – Botão secundário (outline)
- `ValidatedTextField` – Campo de texto com suporte a mensagem de erro
- `CardView` – Container de card simples
- `ToastView` – Toast / banner leve
- `SectionHeader` – Cabeçalhos de seção consistentes

## Requisitos

- iOS 17+
- macOS 14+
- Swift 5.9+

## Instalação

```swift
.package(url: "https://github.com/RknDEV1/swift-ui-kit.git", from: "0.1.0")
```

## Exemplos de Uso

```swift
PrimaryButton("Continuar", isLoading: false) {
    // ação
}

SecondaryButton("Cancelar") {
    // ação
}

ValidatedTextField("E-mail", text: $email, errorMessage: emailError)

CardView {
    Text("Conteúdo do card")
}

ToastView("Salvo com sucesso", systemImage: "checkmark.circle")

SectionHeader("Configurações", subtitle: "Gerencie suas preferências")
```

## Estrutura

```
Sources/SwiftUIKit/
├── Buttons/
├── Inputs/
├── Cards/
├── Feedback/
└── Layout/
```

## Licença

MIT

---

# Swift UI Kit (English)

Modern and reusable **SwiftUI** components for native iOS apps.

See the sections above for components, requirements, installation and usage examples.
