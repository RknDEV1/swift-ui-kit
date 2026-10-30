import SwiftUI

/// Text field with built-in validation state and error message.
public struct ValidatedTextField: View {
    let title: String
    @Binding var text: String
    var isSecure: Bool = false
    var errorMessage: String?

    public init(
        _ title: String,
        text: Binding<String>,
        isSecure: Bool = false,
        errorMessage: String? = nil
    ) {
        self.title = title
        self._text = text
        self.isSecure = isSecure
        self.errorMessage = errorMessage
    }

    public var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Group {
                if isSecure {
                    SecureField(title, text: $text)
                } else {
                    TextField(title, text: $text)
                        .autocorrectionDisabled()
                }
            }
            .textFieldStyle(.roundedBorder)

            if let errorMessage, !errorMessage.isEmpty {
                Text(errorMessage)
                    .font(.caption)
                    .foregroundStyle(.red)
            }
        }
    }
}
