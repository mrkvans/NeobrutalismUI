import SwiftUI

public struct NeoBrutalToggleStyle: ToggleStyle {
        @Environment(\.neoBrutalTheme) private var theme

        public init() {}

        public func makeBody(configuration: Configuration) -> some View {
                HStack {
                        configuration.label
                                .foregroundColor(theme.textColor)

                        Spacer()

                        Rectangle()
                                .fill(
                                        configuration.isOn
                                                ? theme.primaryColor : theme.backgroundColor
                                )
                                .overlay(
                                        RoundedRectangle(cornerRadius: 4)
                                                .stroke(
                                                        theme.outlineColor,
                                                        lineWidth: theme.outlineWidth)
                                )
                                .frame(width: 44, height: 24)
                                .overlay(
                                        Circle()
                                                .fill(theme.backgroundColor)
                                                .overlay(
                                                        Circle()
                                                                .stroke(
                                                                        theme.outlineColor,
                                                                        lineWidth: theme
                                                                                .outlineWidth * 0.66
                                                                )
                                                )
                                                .padding(2)
                                                .offset(x: configuration.isOn ? 10 : -10)
                                                .animation(
                                                        .easeInOut(duration: 0.2),
                                                        value: configuration.isOn)
                                )
                                .onTapGesture {
                                        configuration.isOn.toggle()
                                }
                }
        }
}
