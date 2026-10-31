# Swift UI Kit

Componentes **SwiftUI** modernos e reutilizáveis para apps iOS nativos.

[![CI](https://github.com/RknDEV1/swift-ui-kit/actions/workflows/ci.yml/badge.svg)](https://github.com/RknDEV1/swift-ui-kit/actions/workflows/ci.yml)
[![Swift](https://img.shields.io/badge/Swift-5.9+-orange.svg)](https://swift.org)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

> English: [README.md](README.md)

---

## Componentes

| Componente | Descrição |
|------------|-----------|
| `PrimaryButton` | Botão principal com loading |
| `SecondaryButton` | Botão outline |
| `IconButton` | Botão circular com SF Symbol |
| `ValidatedTextField` | Campo com mensagem de erro |
| `CardView` | Card reutilizável |
| `ToastView` | Banner leve |
| `SectionHeader` | Título de seção |

---

## Instalação

```swift
.package(url: "https://github.com/RknDEV1/swift-ui-kit.git", branch: "main")
```

---

## Exemplos

```swift
PrimaryButton("Continuar", isLoading: false) { }
SecondaryButton("Cancelar") { }
IconButton(systemName: "gearshape") { }

ValidatedTextField("E-mail", text: $email, errorMessage: erro)
CardView { Text("Conteúdo") }
ToastView("Salvo", systemImage: "checkmark.circle")
SectionHeader("Ajustes", subtitle: "Preferências")
```

---

## Licença

MIT
