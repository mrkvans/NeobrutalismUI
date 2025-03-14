import SwiftUI

public struct NeoBrutalRadioButton<Label: View>: View {
        @Binding var isSelected: Bool
        let label: Label
        let action: () -> Void

        @Environment(\.neoBrutalTheme) private var theme

        public init(
                isSelected: Binding<Bool>, action: @escaping () -> Void,
                @ViewBuilder label: () -> Label
        ) {
                self._isSelected = isSelected
                self.action = action
                self.label = label()
        }

        public var body: some View {
                Button(action: action) {
                        HStack {
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

                                label
                                        .foregroundColor(theme.textColor)
                        }
                }
                .buttonStyle(.plain)
        }
}

public struct NeoBrutalRadioGroup<T: Hashable>: View {
        @Binding var selection: T
        let options: [(T, String)]

        @Environment(\.neoBrutalTheme) private var theme

        public init(selection: Binding<T>, options: [(T, String)]) {
                self._selection = selection
                self.options = options
        }

        public var body: some View {
                VStack(alignment: .leading, spacing: 8) {
                        ForEach(options, id: \.0) { option in
                                NeoBrutalRadioButton(
                                        isSelected: .init(
                                                get: { selection == option.0 },
                                                set: { _ in selection = option.0 }
                                        ),
                                        action: { selection = option.0 }
                                ) {
                                        Text(option.1)
                                }
                        }
                }
        }
}
