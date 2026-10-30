# Swift UI Kit

Componentes **SwiftUI** modernos e reutilizáveis para aplicativos iOS nativos.

[![CI](https://github.com/RknDEV1/swift-ui-kit/actions/workflows/ci.yml/badge.svg)](https://github.com/RknDEV1/swift-ui-kit/actions/workflows/ci.yml)
[![Swift](https://img.shields.io/badge/Swift-5.9+-orange.svg)](https://swift.org)
[![Platform](https://img.shields.io/badge/Platform-iOS%2017%2B%20%7C%20macOS%2014%2B-blue.svg)](https://developer.apple.com)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

> Também disponível em inglês: [README.md](README.md)

---

## Componentes

| Componente | Descrição |
|------------|-----------|
| `PrimaryButton` | Botão principal com estado de loading |
| `SecondaryButton` | Botão secundário (outline) |
| `ValidatedTextField` | Campo de texto com suporte a mensagem de erro |
| `CardView` | Container de card reutilizável |
| `ToastView` | Toast / banner leve |
| `SectionHeader` | Cabeçalho de seção consistente |

---

## Requisitos

- iOS 17.0+
- macOS 14.0+
- Swift 5.9+
- Xcode 15+

---

## Instalação

```swift
dependencies: [
    .package(url: "https://github.com/RknDEV1/swift-ui-kit.git", from: "0.1.0")
]
```

Ou no Xcode:

1. **File → Add Package Dependencies…**
2. Cole `https://github.com/RknDEV1/swift-ui-kit.git`
3. Adicione o pacote ao target

---

## Exemplos de Uso

### Botão Principal

```swift
PrimaryButton("Continuar", isLoading: false) {
    // ação
}
```

### Botão Secundário

```swift
SecondaryButton("Cancelar") {
    // ação
}
```

### Campo Validado

```swift
ValidatedTextField("E-mail", text: $email, errorMessage: emailError)
ValidatedTextField("Senha", text: $password, isSecure: true)
```

### Card

```swift
CardView {
    Text("Conteúdo do card")
}
```

### Toast

```swift
ToastView("Salvo com sucesso", systemImage: "checkmark.circle")
```

### Cabeçalho de Seção

```swift
SectionHeader("Configurações", subtitle: "Gerencie suas preferências")
```

---

## Exemplo de Tela

```swift
struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isLoading = false

    var body: some View {
        VStack(spacing: 20) {
            SectionHeader("Bem-vindo", subtitle: "Entre para continuar")
            ValidatedTextField("E-mail", text: $email)
            ValidatedTextField("Senha", text: $password, isSecure: true)
            PrimaryButton("Entrar", isLoading: isLoading) { }
            SecondaryButton("Criar Conta") { }
        }
        .padding()
    }
}
```

---

## Estrutura do Projeto

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

Veja [CHANGELOG.md](CHANGELOG.md).

## Licença

MIT License. Veja [LICENSE](LICENSE).
