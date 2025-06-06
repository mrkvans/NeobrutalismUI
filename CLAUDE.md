# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Development Commands

### Building and Testing
```bash
# Build the package
swift build

# Run tests
swift test

# Build for release
swift build -c release

# Clean build artifacts
swift package clean

# Update dependencies (if any are added)
swift package update

# Generate Xcode project (optional)
swift package generate-xcodeproj
```


### Single Test Execution
```bash
# Run a specific test
swift test --filter TestName

# Run tests in a specific test case
swift test --filter NeoBrutalismUITests.NeoBrutalismUITests
```

## Architecture Overview

### Package Structure
This is a SwiftUI package providing neobrutalist UI components. The architecture follows these principles:

1. **Theme-Based Design**: All components use a central `NeoBrutalTheme` that's propagated through SwiftUI's environment system. The theme controls visual properties like colors, borders, shadows, and corner radius.

2. **Dual API Pattern**: Each component provides two usage methods:
   - Traditional SwiftUI style (e.g., `.buttonStyle(NeoBrutalButtonStyle())`)
   - Convenient modifier (e.g., `.neoBrutalButtonStyle()`)
   
   The convenient modifiers are defined in `NeoBrutalismUI.swift` and apply the theme from the environment.

3. **Component Categories**:
   - **Style Components**: Implement SwiftUI's style protocols (ButtonStyle, TextFieldStyle, etc.)
   - **Custom Components**: Standalone views like Card, Checkbox, RadioButton
   - **Container Components**: Card, Fieldset for grouping content
   - **Form Controls**: Slider, Stepper with custom implementations

### Key Design Patterns

1. **Environment Theme Propagation**: Theme is set once at the root and accessed by all components:
   ```swift
   @Environment(\.neoBrutalTheme) private var theme
   ```

2. **Consistent Visual Language**:
   - Bold borders (`outlineWidth` typically 3-4 points)
   - Flat design with optional shadows
   - High contrast colors
   - Minimal corner radius

3. **Animation Support**: Interactive components include press/hover animations for better user feedback.

4. **Generic Implementation**: Components like `NeoBrutalRadioGroup<T>` use generics for flexibility.

### Platform Requirements
- Swift 6.1+
- iOS 18.0+
- macOS 15.0+
- Zero external dependencies

### Adding New Components
When adding new components:
1. Create a new file named `NeoBrutal[ComponentName].swift`
2. Access theme via `@Environment(\.neoBrutalTheme)`
3. Follow the existing visual patterns (borders, colors, shadows)
4. Add a convenient modifier in `NeoBrutalismUI.swift`
5. Use proper access control (`public` for API surface)
6. Consider adding `@frozen` to structs for performance