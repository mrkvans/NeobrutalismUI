import SwiftUI

public struct NeoBrutalFieldset<Content: View>: View {
        let legend: String
        let content: Content

        @Environment(\.neoBrutalTheme) private var theme

        public init(legend: String, @ViewBuilder content: () -> Content) {
                self.legend = legend
                self.content = content()
        }

        public var body: some View {
                VStack(alignment: .leading, spacing: 8) {
                        if !legend.isEmpty {
                                Text(legend)
                                        .font(.headline)
                                        .foregroundColor(theme.textColor)
                        }
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
                        color: theme.shadowColor, radius: theme.shadowRadius,
                        x: theme.shadowOffset.width, y: theme.shadowOffset.height)
        }
}
