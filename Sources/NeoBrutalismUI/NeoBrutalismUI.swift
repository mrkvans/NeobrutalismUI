// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

// Core
@_exported import struct SwiftUI.Color
@_exported import protocol SwiftUI.View
@_exported import protocol SwiftUI.ViewModifier

// Style Components
public typealias NeoBrutalButton = NeoBrutalButtonStyle
public typealias NeoBrutalTextField = NeoBrutalTextFieldStyle
public typealias NeoBrutalToggle = NeoBrutalToggleStyle
public typealias NeoBrutalProgress = NeoBrutalProgressViewStyle
public typealias NeoBrutalSlider = NeoBrutalSliderStyle

// Convenient modifiers
extension View {
        public func neoBrutalButtonStyle() -> some View {
                self.buttonStyle(NeoBrutalButtonStyle())
        }

        public func neoBrutalTextFieldStyle() -> some View {
                self.textFieldStyle(NeoBrutalTextFieldStyle())
        }

        public func neoBrutalToggleStyle() -> some View {
                self.toggleStyle(NeoBrutalToggleStyle())
        }

        public func neoBrutalProgressViewStyle() -> some View {
                self.progressViewStyle(NeoBrutalProgressViewStyle())
        }

        public func neoBrutalSliderStyle() -> some View {
                self.modifier(NeoBrutalSliderStyle())
        }
}
