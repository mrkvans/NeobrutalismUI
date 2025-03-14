import SwiftUI

public struct NeoBrutalStepperStyle: ViewModifier {
        @Environment(\.neoBrutalTheme) private var theme

        public func body(content: Content) -> some View {
                content
                        .padding(.horizontal, 8)
                        .background(theme.backgroundColor)
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
                        .tint(theme.primaryColor)
        }

        public init() {}
}
