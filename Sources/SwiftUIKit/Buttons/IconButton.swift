import SwiftUI

/// Circular icon button for toolbars and compact actions.
public struct IconButton: View {
    let systemName: String
    let action: () -> Void

    public init(systemName: String, action: @escaping () -> Void) {
        self.systemName = systemName
        self.action = action
    }

    public var body: some View {
        Button(action: action) {
            Image(systemName: systemName)
                .font(.body.weight(.semibold))
                .frame(width: 40, height: 40)
                .background(Color.secondary.opacity(0.15))
                .clipShape(Circle())
        }
        .buttonStyle(.plain)
    }
}
