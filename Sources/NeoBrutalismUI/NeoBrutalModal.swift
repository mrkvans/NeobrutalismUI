import SwiftUI

public struct NeoBrutalModalModifier<ModalContent: View>: ViewModifier {
        @Binding var isPresented: Bool
        let modalContent: () -> ModalContent

        @Environment(\.neoBrutalTheme) private var theme

        public func body(content: Content) -> some View {
                ZStack {
                        content

                        if isPresented {
                                Color.black.opacity(0.3)
                                        .edgesIgnoringSafeArea(.all)

                                VStack {
                                        modalContent()
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
        public func neoBrutalModal<ModalContent: View>(
                isPresented: Binding<Bool>,
                @ViewBuilder modalContent: @escaping () -> ModalContent
        ) -> some View {
                self.modifier(
                        NeoBrutalModalModifier(isPresented: isPresented, modalContent: modalContent)
                )
        }
}
