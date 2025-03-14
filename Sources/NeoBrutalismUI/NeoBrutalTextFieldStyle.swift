import SwiftUI

public struct NeoBrutalTextFieldStyle: TextFieldStyle {
        public func _body(configuration: TextField<_Label>) -> some View {
                NeoBrutalTextField(configuration: configuration)
        }

        public init() {}

        struct NeoBrutalTextField: View {
                let configuration: TextField<_Label>
                @Environment(\.neoBrutalTheme) private var theme

                var body: some View {
                        configuration
                                .padding()
                                .background(theme.backgroundColor)
                                .cornerRadius(theme.cornerRadius)
                                .overlay(
                                        RoundedRectangle(cornerRadius: theme.cornerRadius)
                                                .stroke(
                                                        theme.outlineColor,
                                                        lineWidth: theme.outlineWidth)
                                )
                                .foregroundColor(theme.textColor)
                                .shadow(
                                        color: theme.shadowColor, radius: theme.shadowRadius,
                                        x: theme.shadowOffset.width, y: theme.shadowOffset.height)
                }
        }
}
