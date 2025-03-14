import SwiftUI

@frozen public struct NeoBrutalTheme: Sendable {
        public var outlineWidth: CGFloat = 3
        public var cornerRadius: CGFloat = 0
        public var shadowRadius: CGFloat = 0
        public var shadowOffset: CGSize = .zero
        public var shadowColor: SwiftUI.Color = .clear

        public var outlineColor: SwiftUI.Color = NeoBrutalColors.outline
        public var backgroundColor: SwiftUI.Color = NeoBrutalColors.background
        public var textColor: SwiftUI.Color = NeoBrutalColors.text

        public var primaryColor: SwiftUI.Color = NeoBrutalColors.primary
        public var secondaryColor: SwiftUI.Color = NeoBrutalColors.secondary

        public init() {}
}

private struct NeoBrutalThemeKey: EnvironmentKey {
        static let defaultValue = NeoBrutalTheme()
}

extension EnvironmentValues {
        public var neoBrutalTheme: NeoBrutalTheme {
                get { self[NeoBrutalThemeKey.self] }
                set { self[NeoBrutalThemeKey.self] = newValue }
        }
}

public struct NeoBrutalThemeModifier: ViewModifier {
        let theme: NeoBrutalTheme

        public func body(content: Content) -> some View {
                content.environment(\.neoBrutalTheme, theme)
        }
}

extension View {
        public func neoBrutalTheme(_ theme: NeoBrutalTheme) -> some View {
                self.modifier(NeoBrutalThemeModifier(theme: theme))
        }
}
