import SwiftUI

public struct NeoBrutalCheckbox: View {
        @Binding var isChecked: Bool
        let label: String

        @Environment(\.neoBrutalTheme) private var theme

        public init(isChecked: Binding<Bool>, label: String) {
                self._isChecked = isChecked
                self.label = label
        }

        public var body: some View {
                HStack {
                        Button(action: {
                                isChecked.toggle()
                        }) {
                                ZStack {
                                        Rectangle()
                                                .fill(theme.backgroundColor)
                                                .overlay(
                                                        RoundedRectangle(
                                                                cornerRadius: theme.cornerRadius
                                                                        * 0.2
                                                        )
                                                        .stroke(
                                                                theme.outlineColor,
                                                                lineWidth: theme.outlineWidth)
                                                )
                                                .frame(width: 24, height: 24)

                                        if isChecked {
                                                Image(systemName: "checkmark")
                                                        .resizable()
                                                        .scaledToFit()
                                                        .frame(width: 12, height: 12)
                                                        .foregroundColor(theme.textColor)
                                        }
                                }
                        }
                        .buttonStyle(.plain)

                        Text(label)
                                .foregroundColor(theme.textColor)
                }
        }
}
