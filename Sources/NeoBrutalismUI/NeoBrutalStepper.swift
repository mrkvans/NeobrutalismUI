import SwiftUI

public struct NeoBrutalStepper: View {
        @Binding var value: Int
        let label: String

        @Environment(\.neoBrutalTheme) private var theme

        public init(value: Binding<Int>, label: String) {
                self._value = value
                self.label = label
        }

        public var body: some View {
                HStack {
                        Text(label)
                                .foregroundColor(theme.textColor)

                        Spacer()

                        Button(action: { value -= 1 }) {
                                Text("-")
                                        .frame(width: 24, height: 24)
                        }
                        .buttonStyle(NeoBrutalButtonStyle())

                        Text("\(value)")
                                .frame(minWidth: 40)
                                .multilineTextAlignment(.center)
                                .foregroundColor(theme.textColor)

                        Button(action: { value += 1 }) {
                                Text("+")
                                        .frame(width: 24, height: 24)
                        }
                        .buttonStyle(NeoBrutalButtonStyle())
                }
        }
}
