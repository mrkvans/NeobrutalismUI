import SwiftUI

public struct NeoBrutalTextFieldStyle: TextFieldStyle {
        public func _body(configuration: TextField<Self._Label>) -> some View {
                configuration
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8)
                        .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                        .stroke(Color.black, lineWidth: 2)
                        )
                        .shadow(color: Color.black.opacity(0.2), radius: 4, x: 4, y: 4)
        }

        public init() {}
}
