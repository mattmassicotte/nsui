<div align="center">

[![Build Status][build status badge]][build status]
[![Platforms][platforms badge]][platforms]
[![Discord][discord badge]][discord]

</div>

# NSUI
AppKit and UIKit without conditional compilation

There are small differences between otherwise-source-compatible classes in AppKit and UIKit and it drives everyone bananas. I was inspired by [Nick Lockwood](https://gist.github.com/nicklockwood/19569dc738b565c67f4d97302bf48697) to make this into a package.

When in doubt, UIKit wins. This keeps things familiar to the most people.

## Integration

Swift Package Manager:

```swift
dependencies: [
    .package(url: "https://github.com/mattmassicotte/nsui")
]
```

## Types
All Types and their `UIKit` & `AppKit` correspondance are defined in the `Aliases.swift` file. That file only defines the 
NSUI type corresponding to the proper platform. 

Here's the current list of types supported in NSUI: 
```
NSUIActivityIndicatorView
NSUIApplication
NSUIApplicationDelegate
NSUIApplicationDelegateAdaptor

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
NSUITapGestureRecognizer
NSUITextStorageEditActions
NSUITextField
NSUITextFieldDelegate
NSUITextView
NSUIViewController
NSUIWorkspace
```

If you are looking for event key mappings, particularly `UIKeyboardHIDUsage` and `UIKeyModifierFlags`, check out [KeyCodes](https://github.com/ChimeHQ/KeyCodes).

## Protocols

```swift
public protocol NSUIViewRepresentable {
    associatedtype NSUIViewType

    func makeNSUIView(context: Context) -> NSUIViewType
    func updateNSUIView(_ view: NSUIViewType, context: Context)
}

public protocol NSUIViewControllerRepresentable: UIViewControllerRepresentable {
	associatedtype NSUIViewControllerType

	@MainActor
	func makeNSUIViewController(context: Context) -> NSUIViewControllerType
	@MainActor
	func updateNSUIViewController(_ viewController: NSUIViewControllerType, context: Context)
}
```

## Cross-Platform Wrappers

There are cases where it is necessary to provide cross-platform wrappers around functions, acessors, or initializers.

```swift
Color(nsuiColor: NSUIColor)
Image(nsuiImage: NSUIImage)
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
1- Check if the type you need is defined in the `Aliases.swift` file. If not, add it there
2- If your type, needs to supply a bridging `var` or `func`, define that in a proper swift file.
3- Always prioritize the `UIKit` naming scheme when defining new bridging `var` or `func`.  

## Contributing and Collaboration

I would love to hear from you! Issues or pull requests work great. A [Discord server][discord] is also available for live help, but I have a strong bias towards answering in the form of documentation.

I prefer collaboration, and would love to find ways to work together if you have a similar project.

I prefer indentation with tabs for improved accessibility. But, I'd rather you use the system you want and make a PR than hesitate because of whitespace.

By participating in this project you agree to abide by the [Contributor Code of Conduct](CODE_OF_CONDUCT.md).

[build status]: https://github.com/mattmassicotte/nsui/actions
[build status badge]: https://github.com/mattmassicotte/nsui/workflows/CI/badge.svg
[platforms]: https://swiftpackageindex.com/mattmassicotte/nsui
[platforms badge]: https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fmattmassicotte%2Fnsui%2Fbadge%3Ftype%3Dplatforms
[discord]: https://discord.gg/esFpX6sErJ
[discord badge]: https://img.shields.io/badge/Discord-purple?logo=Discord&label=Chat&color=%235A64EC
