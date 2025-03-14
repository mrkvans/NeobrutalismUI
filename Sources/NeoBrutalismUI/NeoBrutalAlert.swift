import SwiftUI

public struct NeoBrutalAlertModifier<AlertContent: View>: ViewModifier {
        @Binding var isPresented: Bool
        let alertContent: () -> AlertContent

        @Environment(\.neoBrutalTheme) private var theme

        public func body(content: Content) -> some View {
                ZStack {
                        content

                        if isPresented {
                                Color.black.opacity(0.3)
                                        .edgesIgnoringSafeArea(.all)

                                VStack {
                                        alertContent()
                                }
                                .padding()
                                .background(theme.backgroundColor)
                                .cornerRadius(theme.cornerRadius)
                                .overlay(
                                        RoundedRectangle(cornerRadius: theme.cornerRadius)
                                                .stroke(
                                                        theme.outlineColor,
                                                        lineWidth: theme.outlineWidth)
                                )
                                .shadow(
                                        color: theme.shadowColor, radius: theme.shadowRadius,
                                        x: theme.shadowOffset.width, y: theme.shadowOffset.height
                                )
                                .padding(.horizontal, 40)
                                .transition(.scale)
                        }
                }
        }
}

extension View {
        public func neoBrutalAlert<AlertContent: View>(
                isPresented: Binding<Bool>,
                @ViewBuilder alertContent: @escaping () -> AlertContent
        ) -> some View {
                self.modifier(
                        NeoBrutalAlertModifier(
                                isPresented: isPresented,
                                alertContent: alertContent))
        }
}
