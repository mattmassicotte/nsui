<div align="center">

[![Build Status][build status badge]][build status]
[![Platforms][platforms badge]][platforms]
[![Discord][discord badge]][discord]

</div>

# NSUI
AppKit and UIKit without conditional compilation

There are small differences between otherwise-source-compatible classes in AppKit and UIKit and it drives everyone bananas. I was inspired by [Nick Lockwood](https://gist.github.com/nicklockwood/19569dc738b565c67f4d97302bf48697) to make this into a package.

When in doubt, UIKit wins. This keeps things familar to the most people.

## Integration

Swift Package Manager:

```swift
dependencies: [
    .package(url: "https://github.com/mattmassicotte/nsui")
]
```

## Types

```
NSUIApplication
NSUIApplicationDelegate
NSUIApplicationDelegateAdaptor
NSUIColor
NSUIHostingController
NSUIImage
NSUILongPressGestureRecognizer
NSUIPasteboard
NSUIResponder
NSUITapGestureRecognizer
NSUITextStorageEditActions
NSUITextView
NSUIViewController
NSUIWorkspace
```

## Protocols

```swift
public protocol NSUIViewRepresentable {
    associatedtype NSUIViewType

    func makeNSUIView(context: Context) -> NSUIViewType
    func updateNSUIView(_ view: NSUIViewType, context: Context)
}
```

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
