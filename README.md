# NeoBrutalismUI

A comprehensive SwiftUI package that implements the Neobrutalism design style. This package provides a collection of customizable UI components that follow the neobrutalist aesthetic, featuring bold colors, strong outlines, and dramatic shadows.

## Requirements

- iOS 18.0+
- macOS 15.0+
- Swift 6.1+

## Installation

### Swift Package Manager

Add the following to your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/mrkvans/NeobrutalismUI.git", from: "1.0.0")
]
```

## Features

- Consistent neobrutalist design system
- Customizable theme support
- Comprehensive set of UI components
- iOS and macOS support

## Components

### Core
- `NeoBrutalColors` - Predefined color palette
- `NeoBrutalTheme` - Customizable theme system

### Basic Components
- Button (`NeoBrutalButtonStyle`)
- TextField (`NeoBrutalTextFieldStyle`)
- Toggle (`NeoBrutalToggleStyle`)
- ProgressView (`NeoBrutalProgressViewStyle`)
- Card (`NeoBrutalCard`)
- Checkbox (`NeoBrutalCheckbox`)
- Radio Button/Group (`NeoBrutalRadioButton`, `NeoBrutalRadioGroup`)
- Slider (`NeoBrutalSlider`)
- Stepper (`NeoBrutalStepper`)
- Fieldset (`NeoBrutalFieldset`)

### Overlay Components
- Alert (`neoBrutalAlert` modifier)
- Toast (`neoBrutalToast` modifier)
- Modal (`neoBrutalModal` modifier)

### Navigation
- TabView (`NeoBrutalTabView`)

## Usage

### Basic Setup

```swift
import NeoBrutalismUI

struct ContentView: View {
    // Create a custom theme
    let myTheme: NeoBrutalTheme = {
        var theme = NeoBrutalTheme()
        theme.cornerRadius = 8
        theme.outlineWidth = 4
        theme.primaryColor = NeoBrutalColors.tertiary
        theme.shadowRadius = 5
        theme.shadowOffset = CGSize(width: 4, height: 4)
        theme.shadowColor = Color.black.opacity(0.2)
        return theme
    }()

    var body: some View {
        NavigationStack {
            // Your content here
        }
        .neoBrutalTheme(myTheme) // Apply the theme
    }
}
```

### Component Examples

```swift
// Button
Button("Click Me") {
    // Action
}
.buttonStyle(NeoBrutalButtonStyle())

// TextField
TextField("Enter text", text: $text)
    .textFieldStyle(NeoBrutalTextFieldStyle())

// Toggle
Toggle("Enable Feature", isOn: $isEnabled)
    .toggleStyle(NeoBrutalToggleStyle())

// Card
NeoBrutalCard {
    Text("Card Content")
}

// Alert
.neoBrutalAlert(isPresented: $showAlert) {
    Text("Alert Content")
}

// And many more...
```

## Customization

You can customize the appearance of all components by modifying the `NeoBrutalTheme`:

```swift
var theme = NeoBrutalTheme()
theme.primaryColor = .red
theme.outlineWidth = 3
theme.cornerRadius = 8
theme.shadowOffset = CGSize(width: 4, height: 4)
// ... etc
```

## License

MIT License. See LICENSE file for details.

## Author

Created by The App Launchers 