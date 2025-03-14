import SwiftUI

public struct NeoBrutalRadioButton: View {
        let label: String
        @Binding var isSelected: Bool

        @Environment(\.neoBrutalTheme) private var theme

        public init(label: String, isSelected: Binding<Bool>) {
                self.label = label
                self._isSelected = isSelected
        }

        public var body: some View {
                HStack {
                        Button(action: {
                                isSelected.toggle()
                        }) {
                                ZStack {
                                        Circle()
                                                .fill(theme.backgroundColor)
                                                .overlay(
                                                        Circle()
                                                                .stroke(
                                                                        theme.outlineColor,
                                                                        lineWidth: theme
                                                                                .outlineWidth)
                                                )
                                                .frame(width: 24, height: 24)

                                        if isSelected {
                                                Circle()
                                                        .fill(theme.outlineColor)
                                                        .frame(width: 12, height: 12)
                                        }
                                }
                        }
                        .buttonStyle(.plain)

                        Text(label)
                                .foregroundColor(theme.textColor)
                }
        }
}

public struct NeoBrutalRadioGroup: View {
        @Binding var selected: String
        let options: [String]

        public init(selected: Binding<String>, options: [String]) {
                self._selected = selected
                self.options = options
        }

        public var body: some View {
                VStack(alignment: .leading, spacing: 8) {
                        ForEach(options, id: \.self) { option in
                                NeoBrutalRadioButton(
                                        label: option,
                                        isSelected: .constant(selected == option)
                                )
                                .onTapGesture {
                                        selected = option
                                }
                        }
                }
        }
}
