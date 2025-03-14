import SwiftUI

public struct NeoBrutalToastModifier: ViewModifier {
        @Binding var isPresented: Bool
        let message: String

        @Environment(\.neoBrutalTheme) private var theme

        public func body(content: Content) -> some View {
                ZStack {
                        content

                        if isPresented {
                                VStack {
                                        Spacer()
                                        Text(message)
                                                .foregroundColor(theme.textColor)
                                                .padding()
                                                .background(theme.backgroundColor)
                                                .overlay(
                                                        RoundedRectangle(
                                                                cornerRadius: theme.cornerRadius
                                                        )
                                                        .stroke(
                                                                theme.outlineColor,
                                                                lineWidth: theme.outlineWidth)
                                                )
                                                .shadow(
                                                        color: theme.shadowColor,
                                                        radius: theme.shadowRadius,
                                                        x: theme.shadowOffset.width,
                                                        y: theme.shadowOffset.height
                                                )
                                                .padding()
                                }
                                .transition(.move(edge: .bottom))
                        }
                }
        }
}

extension View {
        public func neoBrutalToast(isPresented: Binding<Bool>, message: String) -> some View {
                self.modifier(NeoBrutalToastModifier(isPresented: isPresented, message: message))
        }
}
