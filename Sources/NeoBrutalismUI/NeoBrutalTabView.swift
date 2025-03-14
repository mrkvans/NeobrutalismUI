import SwiftUI

public struct NeoBrutalTabView<Tab: Hashable, TabContent: View, TabLabel: View>: View {
        @Binding var selection: Tab
        let tabs: [Tab]
        let label: (Tab) -> TabLabel
        let content: (Tab) -> TabContent

        @Environment(\.neoBrutalTheme) private var theme

        public init(
                selection: Binding<Tab>,
                tabs: [Tab],
                @ViewBuilder label: @escaping (Tab) -> TabLabel,
                @ViewBuilder content: @escaping (Tab) -> TabContent
        ) {
                self._selection = selection
                self.tabs = tabs
                self.label = label
                self.content = content
        }

        public var body: some View {
                VStack(spacing: 0) {
                        // Tab bar
                        HStack(spacing: 0) {
                                ForEach(tabs, id: \.self) { tab in
                                        Button(action: {
                                                selection = tab
                                        }) {
                                                label(tab)
                                                        .frame(maxWidth: .infinity)
                                                        .padding(.vertical, 8)
                                                        .foregroundColor(theme.textColor)
                                                        .background(
                                                                selection == tab
                                                                        ? theme.primaryColor
                                                                        : theme.backgroundColor
                                                        )
                                                        .overlay(
                                                                Rectangle()
                                                                        .stroke(
                                                                                theme.outlineColor,
                                                                                lineWidth: theme
                                                                                        .outlineWidth
                                                                        )
                                                        )
                                        }
                                        .buttonStyle(.plain)
                                }
                        }
                        // Tab content
                        content(selection)
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .overlay(
                                        RoundedRectangle(cornerRadius: 0)
                                                .stroke(
                                                        theme.outlineColor,
                                                        lineWidth: theme.outlineWidth)
                                )
                }
        }
}
