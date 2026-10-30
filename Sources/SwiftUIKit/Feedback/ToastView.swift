import SwiftUI

/// Lightweight toast / banner message.
public struct ToastView: View {
    let message: String
    let systemImage: String?

    public init(_ message: String, systemImage: String? = nil) {
        self.message = message
        self.systemImage = systemImage
    }

    public var body: some View {
        HStack(spacing: 10) {
            if let systemImage {
                Image(systemName: systemImage)
            }
            Text(message)
                .font(.subheadline.weight(.medium))
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 12)
        .background(.ultraThinMaterial)
        .clipShape(Capsule())
        .shadow(radius: 4)
    }
}
