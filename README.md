<div align="center">

[![Build Status][build status badge]][build status]
[![Platforms][platforms badge]][platforms]
[![Matrix][matrix badge]][matrix]

</div>

# NSUI
AppKit and UIKit without conditional compilation

There are small differences between otherwise-source-compatible classes in AppKit and UIKit and it drives everyone bananas. I was inspired by [Nick Lockwood](https://gist.github.com/nicklockwood/19569dc738b565c67f4d97302bf48697) to make this into a package.

When in doubt, UIKit wins. This keeps things familiar to the most people.

Other libraries you might like:

- [ColorToolbox](https://github.com/raymondjavaxx/ColorToolbox): AppKit/UIKit-compatible Color abstraction and utilities
- [KeyCodes](https://github.com/ChimeHQ/KeyCodes): AppKit Carbon key codes to UIKey-compatible enums

## Integration

Swift Package Manager:

```swift
dependencies: [
    .package(url: "https://github.com/mattmassicotte/nsui")
]
```

## Usage

```swift
// not only does this import the NSUI package, but it also will correctly make either AppKit or UIKit accessible depending on the build target platform.
import NSUI

// Make use of the cross-platform wrappers
let textView = NSUITextView()
```

There are cases where it is necessary to provide cross-platform wrappers around functions, accessors, or initializers. These account for type differences, including cases where value differ only in optionality.

```swift
// SwiftUI
Color(nsuiColor: NSUIColor)
Image(nsuiImage: NSUIImage)
NSUIControlActiveState

// AppKit/UIKit
NSUIFont.init(nsuiDescriptor:, size:)
NSUIFontDescriptor.nsuiWithSymbolicTraits(_:)
NSUITextView.nsuiLayoutManager
NSUITextView.nsuiSelectedRange
```

NSUI also includes both `NSUIViewRepresentable` and `NSUIViewControllerRepresentable` to wrap your custom view subclasses.

## Types
All Types and their `UIKit` & `AppKit` correspondance are defined in the `Aliases.swift` file. That file only defines the 
NSUI type corresponding to the proper platform. 

Here's the current list of types supported in NSUI: 
```
NSUIActivityIndicatorView
NSUIApplication
NSUIApplicationDelegate
NSUIApplicationDelegateAdaptor
NSUIBezierPath

// Collection Views
NSUICollectionDataSource
NSUICollectionView
NSUICollectionViewItem
NSUICollectionViewDelegate
NSUICollectionViewLayout
NSUICollectionViewFlowLayout
NSUICollectionViewLayoutAttributes
NSUICollectionViewDelegateFlowLayout

NSUIButton
NSUIColor
NSUIEdgeInsets
NSUIFont
NSUIFontDescriptor
NSUIHostingController
NSUIImage
NSUILongPressGestureRecognizer
NSUINib
NSUIPasteboard
NSUIResponder
NSUIStackView
NSUIStoryboard
NSUITableView
NSUITableViewDiffableDataSource
NSUITapGestureRecognizer
NSUITextField
NSUITextFieldDelegate
NSUITextView
NSUIViewController
NSUIWorkspace
```

## Conventions
NSUI is not a multi-platform framework to replace both UIKit and AppKit. As stated above, `NSUI` takes the stance that
the API from `UIKit` is the first-class citizen. However, in some cases, both AppKit and UIKit are very close to each other. 

Let's take, for example, the `NSProgressIndicator` and `UIActivityIndicator` classes. To start the spinning indicator view, you need to 
issue `startAnimating()` for UIKit and `startAnimation(sender:)` for AppKit.

In order to bridge that slight difference, a bridging function is created in the `Views.swift` file which looks like this: 
```swift
extension NSUIActivityIndicator {
    public func startAnimating() {
        self.startAnimation(nil)
    }
    
    public func stopAnimating() {
        self.stopAnimation(nil)
    }
}
```
This extension is wrapped within a: `#if canImport(AppKit)` and provides the `UIKit` functional equivalent to the `AppKit` class. 

## Enhancing `NSUI`
If you need to enhance `NSUI`, follow the following guidelines:

1. Check if the type you need is defined in the `Aliases.swift` file.
2. If your type needs to bridging functions, define them in a dedicated file.
3. Prioritize `UIKit` implementations, unless type-mismatches prevent it.

## Alternatives

- [UXKit](https://github.com/ZeeZide/UXKit)

## Contributing and Collaboration

I would love to hear from you! Issues or pull requests work great. Both a [Matrix space][matrix] and [Discord][discord] are available for live help, but I have a strong bias towards answering in the form of documentation. You can also find me on [the web](https://www.massicotte.org).

I prefer collaboration, and would love to find ways to work together if you have a similar project.

I prefer indentation with tabs for improved accessibility. But, I'd rather you use the system you want and make a PR than hesitate because of whitespace.

By participating in this project you agree to abide by the [Contributor Code of Conduct](CODE_OF_CONDUCT.md).

[build status]: https://github.com/mattmassicotte/nsui/actions
[build status badge]: https://github.com/mattmassicotte/nsui/workflows/CI/badge.svg
[platforms]: https://swiftpackageindex.com/mattmassicotte/nsui
[platforms badge]: https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fmattmassicotte%2Fnsui%2Fbadge%3Ftype%3Dplatforms
[matrix]: https://matrix.to/#/%23chimehq%3Amatrix.org
[matrix badge]: https://img.shields.io/matrix/chimehq%3Amatrix.org?label=Matrix
[discord]: https://discord.gg/esFpX6sErJ
