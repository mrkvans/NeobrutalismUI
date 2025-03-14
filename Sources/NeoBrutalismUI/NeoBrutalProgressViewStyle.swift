import SwiftUI

public struct NeoBrutalProgressViewStyle: ProgressViewStyle {
        @Environment(\.neoBrutalTheme) private var theme

        public init() {}

        public func makeBody(configuration: Configuration) -> some View {
                GeometryReader { geo in
                        ZStack(alignment: .leading) {
                                RoundedRectangle(cornerRadius: theme.cornerRadius)
                                        .fill(theme.backgroundColor)
                                        .frame(height: 8)
                                        .overlay(
                                                RoundedRectangle(cornerRadius: theme.cornerRadius)
                                                        .stroke(
                                                                theme.outlineColor,
                                                                lineWidth: theme.outlineWidth)
                                        )
                                if let fractionCompleted = configuration.fractionCompleted {
                                        RoundedRectangle(cornerRadius: theme.cornerRadius)
                                                .fill(theme.primaryColor)
                                                .frame(
                                                        width: geo.size.width
                                                                * CGFloat(fractionCompleted),
                                                        height: 8
                                                )
                                                .overlay(
                                                        RoundedRectangle(
                                                                cornerRadius: theme.cornerRadius
                                                        )
                                                        .stroke(
                                                                theme.outlineColor,
                                                                lineWidth: theme.outlineWidth)
                                                )
                                }
                        }
                }
                .frame(height: 8)
        }
}
