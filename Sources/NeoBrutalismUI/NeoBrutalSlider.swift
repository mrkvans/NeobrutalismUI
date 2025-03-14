import SwiftUI

public struct NeoBrutalSlider: View {
        @Binding var value: Double
        let range: ClosedRange<Double>

        @Environment(\.neoBrutalTheme) private var theme

        public init(value: Binding<Double>, range: ClosedRange<Double>) {
                self._value = value
                self.range = range
        }

        public var body: some View {
                GeometryReader { geo in
                        ZStack(alignment: .leading) {
                                // Background Track
                                RoundedRectangle(cornerRadius: theme.cornerRadius)
                                        .fill(theme.backgroundColor)
                                        .frame(height: 8)
                                        .overlay(
                                                RoundedRectangle(cornerRadius: theme.cornerRadius)
                                                        .stroke(
                                                                theme.outlineColor,
                                                                lineWidth: theme.outlineWidth)
                                        )

                                // Filled portion
                                let progress =
                                        (value - range.lowerBound)
                                        / (range.upperBound - range.lowerBound)
                                RoundedRectangle(cornerRadius: theme.cornerRadius)
                                        .fill(theme.primaryColor)
                                        .frame(width: geo.size.width * CGFloat(progress), height: 8)
                                        .overlay(
                                                RoundedRectangle(cornerRadius: theme.cornerRadius)
                                                        .stroke(
                                                                theme.outlineColor,
                                                                lineWidth: theme.outlineWidth)
                                        )

                                // Thumb
                                Circle()
                                        .fill(theme.primaryColor)
                                        .frame(width: 24, height: 24)
                                        .overlay(
                                                Circle()
                                                        .stroke(
                                                                theme.outlineColor,
                                                                lineWidth: theme.outlineWidth)
                                        )
                                        .offset(x: geo.size.width * CGFloat(progress) - 12, y: -8)
                                        .gesture(
                                                DragGesture()
                                                        .onChanged { drag in
                                                                let newValue =
                                                                        (drag.location.x
                                                                                / geo.size.width)
                                                                        * (range.upperBound
                                                                                - range.lowerBound)
                                                                        + range.lowerBound
                                                                value = min(
                                                                        max(
                                                                                newValue,
                                                                                range.lowerBound),
                                                                        range.upperBound)
                                                        }
                                        )
                        }
                }
                .frame(minHeight: 8)
        }
}
