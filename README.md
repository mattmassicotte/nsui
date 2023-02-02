[![Build Status][build status badge]][build status]
[![License][license badge]][license]

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
NSUILongPressGestureRecognizer
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

I prefer collaboration, and would love to find ways to work together if you have a similar project.

I prefer indentation with tabs for improved accessibility. But, I'd rather you use the system you want and make a PR than hesitate because of whitespace.

## Suggestions and Feedback

I'd love to hear from you! Get in touch via [mastodon](https://mastodon.social/@mattiem), an issue, or a pull request.

By participating in this project you agree to abide by the [Contributor Code of Conduct](CODE_OF_CONDUCT.md).

[build status]: https://github.com/mattmassicotte/nsui/actions
[build status badge]: https://github.com/mattmassicotte/nsui/workflows/CI/badge.svg
[license]: https://opensource.org/licenses/BSD-3-Clause
[license badge]: https://img.shields.io/github/license/mattmassicotte/nsui
