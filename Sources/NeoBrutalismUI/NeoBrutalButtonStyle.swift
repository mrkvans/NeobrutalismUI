import SwiftUI

public struct NeoBrutalButtonStyle: ButtonStyle {
        @Environment(\.neoBrutalTheme) private var theme

        public init() {}

        public func makeBody(configuration: Configuration) -> some View {
                configuration.label
                        .foregroundColor(theme.textColor)
                        .padding(.vertical, 12)
                        .padding(.horizontal, 24)
                        .background(theme.primaryColor)
                        .cornerRadius(theme.cornerRadius)
                        .overlay(
                                RoundedRectangle(cornerRadius: theme.cornerRadius)
                                        .stroke(theme.outlineColor, lineWidth: theme.outlineWidth)
                        )
                        .shadow(
                                color: theme.shadowColor,
                                radius: theme.shadowRadius,
                                x: theme.shadowOffset.width,
                                y: theme.shadowOffset.height
                        )
                        .opacity(configuration.isPressed ? 0.8 : 1.0)
                        .scaleEffect(configuration.isPressed ? 0.98 : 1.0)
                        .animation(.easeInOut(duration: 0.2), value: configuration.isPressed)
        }
}
