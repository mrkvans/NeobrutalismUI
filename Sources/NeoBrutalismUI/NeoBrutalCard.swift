import SwiftUI

public struct NeoBrutalCard<Content: View>: View {
        @Environment(\.neoBrutalTheme) private var theme
        let content: Content

        public init(@ViewBuilder content: () -> Content) {
                self.content = content()
        }

        public var body: some View {
                VStack(spacing: 0) {
                        content
                }
                .padding()
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
                        y: theme.shadowOffset.height)
        }
}
