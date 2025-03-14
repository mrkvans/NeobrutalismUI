import SwiftUI

public struct NeoBrutalColors {
        public static let black = SwiftUI.Color.black
        public static let white = SwiftUI.Color.white
        public static let primary = makeColor(hex: "#FF5C5C")  // bright red/pink
        public static let secondary = makeColor(hex: "#F9C846")  // vibrant yellow
        public static let tertiary = makeColor(hex: "#29A19C")  // teal-ish accent
        public static let grayLight = makeColor(hex: "#F0F0F0")
        public static let grayDark = makeColor(hex: "#242424")

        // Outline color is usually black in many neo-brutal designs
        public static let outline = SwiftUI.Color.black
        public static let background = SwiftUI.Color.white
        public static let text = SwiftUI.Color.black

        static func makeColor(hex: String) -> SwiftUI.Color {
                var cleaned = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
                if cleaned.hasPrefix("#") {
                        cleaned.removeFirst()
                }
                // Short hex (#RGB)
                if cleaned.count == 3 {
                        let r = cleaned[cleaned.startIndex]
                        let g = cleaned[cleaned.index(cleaned.startIndex, offsetBy: 1)]
                        let b = cleaned[cleaned.index(cleaned.startIndex, offsetBy: 2)]
                        cleaned = "\(r)\(r)\(g)\(g)\(b)\(b)"
                }
                guard cleaned.count == 6,
                        let rgbValue = UInt64(cleaned, radix: 16)
                else {
                        return .black
                }
                return SwiftUI.Color(
                        red: Double((rgbValue & 0xFF0000) >> 16) / 255.0,
                        green: Double((rgbValue & 0x00FF00) >> 8) / 255.0,
                        blue: Double(rgbValue & 0x0000FF) / 255.0
                )
        }
}
