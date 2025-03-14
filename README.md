# 🎨 NeoBrutalismUI

> Because subtle design is so 2023! 

Welcome to NeoBrutalismUI – where minimalism meets maximalism, and your apps stop whispering and start SHOUTING! This SwiftUI package brings the bold, unapologetic aesthetic of Neobrutalism to your apps, because let's face it: in a world of flat designs and gentle shadows, sometimes you need to punch through the noise with some bold boxes and thicc borders.

## 🚀 Why NeoBrutalismUI?

- **Stand Out**: In a sea of neumorphic sameness, be the bold splash of color that makes users go "Whoa!"
- **Be Trendy**: Neobrutalism is so hot right now. Like, literally everywhere. Don't be the last one to the party!
- **Stay Fresh**: Because your users deserve better than another gradient-heavy, rounded-corner snooze fest
- **Be Accessible**: Bold colors + high contrast = happy users who can actually read your UI

## 📦 Requirements

- iOS 18.0+ _(because we're living in the future)_
- macOS 15.0+ _(keeping it fresh on the big screen too)_
- Swift 6.1+ _(we're not cavemen, we have technology!)_

## 🛠 Installation

### Swift Package Manager

Add this to your `Package.swift` file (it's easier than making avocado toast):

```swift
dependencies: [
    .package(url: "https://github.com/mrkvans/NeobrutalismUI.git", from: "1.0.0")
]
```

Or in Xcode:
1. File > Add Package Dependencies
2. Enter: `https://github.com/mrkvans/NeobrutalismUI.git`
3. Click "Add Package"

## 🎨 Usage

First, import the package:

```swift
import SwiftUI
import NeoBrutalismUI
```

### Method 1: Using Convenient Modifiers (Recommended)

```swift
struct ContentView: View {
    @State private var text = ""
    @State private var isEnabled = false
    
    var body: some View {
        VStack(spacing: 20) {
            // Button with neobrutalist style
            Button("Click Me!") {
                // Your action here
            }
            .neoBrutalButtonStyle()
            
            // TextField with neobrutalist style
            TextField("Enter text", text: $text)
                .neoBrutalTextFieldStyle()
            
            // Toggle with neobrutalist style
            Toggle("Enable Feature", isOn: $isEnabled)
                .neoBrutalToggleStyle()
            
            // Card with neobrutalist style
            NeoBrutalCard {
                Text("I'm a card!")
                Text("With multiple lines!")
            }
        }
        .padding()
    }
}
```

### Method 2: Using Traditional SwiftUI Style Application

```swift
struct ContentView: View {
    @State private var text = ""
    @State private var isEnabled = false
    
    var body: some View {
        VStack(spacing: 20) {
            // Button with neobrutalist style
            Button("Click Me!") {
                // Your action here
            }
            .buttonStyle(NeoBrutalButtonStyle())
            
            // TextField with neobrutalist style
            TextField("Enter text", text: $text)
                .textFieldStyle(NeoBrutalTextFieldStyle())
            
            // Toggle with neobrutalist style
            Toggle("Enable Feature", isOn: $isEnabled)
                .toggleStyle(NeoBrutalToggleStyle())
            
            // Card with neobrutalist style
            NeoBrutalCard {
                Text("I'm a card!")
                Text("With multiple lines!")
            }
        }
        .padding()
    }
}
```

### 🎨 Customizing the Theme

Create a custom theme to make the components match your app's style:

```swift
let myTheme = NeoBrutalTheme()
myTheme.cornerRadius = 8          // Round those corners (or don't, you do you)
myTheme.outlineWidth = 4          // Thicc borders = more fun
myTheme.primaryColor = .red       // Be bold!
myTheme.shadowRadius = 5          // Shadows that mean business
myTheme.shadowOffset = CGSize(width: 4, height: 4)  // Because flat is flat
myTheme.shadowColor = Color.black.opacity(0.2)      // Just the right amount of drama

// Apply the theme to your view hierarchy
YourView()
    .neoBrutalTheme(myTheme)
```

### Available Components

#### Core Components
- `NeoBrutalButtonStyle` / `.neoBrutalButtonStyle()`
- `NeoBrutalTextFieldStyle` / `.neoBrutalTextFieldStyle()`
- `NeoBrutalToggleStyle` / `.neoBrutalToggleStyle()`
- `NeoBrutalProgressViewStyle` / `.neoBrutalProgressViewStyle()`

#### Container Components
- `NeoBrutalCard`
- `NeoBrutalFieldset`

#### Form Components
- `NeoBrutalCheckbox`
- `NeoBrutalRadioButton`
- `NeoBrutalRadioGroup`
- `NeoBrutalSlider`
- `NeoBrutalStepper`

#### Navigation Components
- `NeoBrutalTabView`

## 🎨 Colors

The package includes a set of predefined colors that follow the neobrutalist aesthetic:

```swift
NeoBrutalColors.primary    // A bold red (#FF5C5C)
NeoBrutalColors.secondary  // Vibrant yellow (#F9C846)
NeoBrutalColors.tertiary   // Teal accent (#29A19C)
NeoBrutalColors.outline    // Usually black
NeoBrutalColors.background // Clean white
NeoBrutalColors.text      // Clear black
```

## 📜 License

MIT License - Because sharing is caring! See LICENSE file for details.

## 👨‍🎨 Author

Created with ❤️ and a healthy disregard for subtlety by The App Launchers

---

### 🎉 Ready to make your app stand out?

Of course you are! Because in a world of subtle designs, sometimes you need to be the one who shows up wearing neon and screaming "I'M HERE!" 

Remember: Your app's UI is like your personality - if you're going to have one, it might as well be interesting! 

Now go forth and build something BRUTAL! 💪

_P.S. If anyone asks why your app looks so awesome, just tell them "It's not a bug, it's a feature!"_ 😎 