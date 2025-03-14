# 🎨 NeoBrutalismUI

> Because subtle design is so 2023! 

Welcome to NeoBrutalismUI – where minimalism meets maximalism, and your apps stop whispering and start SHOUTING! This SwiftUI package brings the bold, unapologetic aesthetic of Neobrutalism to your apps, because let's face it: in a world of flat designs and gentle shadows, sometimes you need to punch through the noise with some bold boxes and thicc borders.

![Neobrutalism Example](https://your-image-url-here.com) _(Coming soon!)_

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

## 🎨 The Brutal Toolkit

### Core Stuff (The Basics)
- `NeoBrutalColors` - A color palette that makes Material Design look shy
- `NeoBrutalTheme` - Because customization is not a crime

### Components (The Fun Part)
- 🔘 Buttons that LOOK like buttons (revolutionary, we know)
- 📝 Text fields that aren't afraid of borders
- 🔄 Toggles that toggle with attitude
- 📊 Progress bars that actually show progress
- 🎴 Cards that don't apologize for their shadows
- ✅ Checkboxes that check with style
- 🔘 Radio buttons that radiate confidence
- 🎚 Sliders that slide with swagger
- 🔢 Steppers that step with purpose
- 📑 Fieldsets that field with finesse

### Overlay Components (The Fancy Stuff)
- ⚠️ Alerts that actually alert
- 🍞 Toasts that pop (not burn)
- 🪟 Modals that demand attention

### Navigation (The Moving Parts)
- 📑 TabView that tabs like it means it

## 🎮 Usage

### The Setup (Easy as 1-2-3)

```swift
import NeoBrutalismUI

struct ContentView: View {
    // Create a theme that screams "I know what I'm doing!"
    let myTheme: NeoBrutalTheme = {
        var theme = NeoBrutalTheme()
        theme.cornerRadius = 8 // Because corners need personality too
        theme.outlineWidth = 4 // Thicc borders = more fun
        theme.primaryColor = NeoBrutalColors.tertiary // Be bold or be boring
        theme.shadowRadius = 5 // Shadows that mean business
        theme.shadowOffset = CGSize(width: 4, height: 4) // Because flat is flat
        theme.shadowColor = Color.black.opacity(0.2) // Just the right amount of drama
        return theme
    }()

    var body: some View {
        NavigationStack {
            // Your masterpiece goes here
        }
        .neoBrutalTheme(myTheme) // Dress for success
    }
}
```

### Show Me The Components! 

```swift
// A button that looks like a button (shocking!)
Button("Smash Me!") {
    print("Ouch!")
}
.buttonStyle(NeoBrutalButtonStyle())

// A text field that isn't trying to hide
TextField("Type something brutal", text: $text)
    .textFieldStyle(NeoBrutalTextFieldStyle())

// A toggle that doesn't do subtle
Toggle("Unleash the beast", isOn: $isEnabled)
    .toggleStyle(NeoBrutalToggleStyle())

// A card that holds its ground
NeoBrutalCard {
    Text("I'm not trapped in here with you...")
    Text("You're trapped in here with me!")
}

// An alert that demands attention
.neoBrutalAlert(isPresented: $showAlert) {
    Text("THIS IS AN ALERT!")
}
```

## 🎨 Customization

Make it yours! Because who doesn't love a good makeover?

```swift
var theme = NeoBrutalTheme()
theme.primaryColor = .red // Go bold or go home
theme.outlineWidth = 3 // Thicc is the new thin
theme.cornerRadius = 8 // Corners with character
theme.shadowOffset = CGSize(width: 4, height: 4) // Drop it like it's hot
```

## 🏃‍♂️ Ready to Get Started?

1. Install the package (you've got this!)
2. Import NeoBrutalismUI (the easy part)
3. Start building (the fun part)
4. Watch your users' jaws drop (the best part)

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