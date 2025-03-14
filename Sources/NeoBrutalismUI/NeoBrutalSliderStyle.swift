import SwiftUI

public struct NeoBrutalSliderStyle: ViewModifier {
        @Environment(\.neoBrutalTheme) private var theme

        public func body(content: Content) -> some View {
                content
                        .tint(theme.primaryColor)
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
        }

        public init() {}
}
