[![License][license badge]][license]

# NSUI
AppKit and UIKit without conditional compilation

There are small differences between otherwise-source-compatible classes in AppKit and UIKit and it drives everyone bananas. I was inspired by [Nick Lockwood](https://gist.github.com/nicklockwood/19569dc738b565c67f4d97302bf48697) to make this into a package.

When it doubt, UIKit wins. This keeps things familar to the most people.

## Integration

Swift Package Manager:

```swift
dependencies: [
    .package(url: "https://github.com/mattmassicotte/nsui")
]
```

## Types

```
NSUITextView
NSUITextStorageEditActions
```

## Suggestions and Feedback

I'd love to hear from you! Get in touch via [mastodon](https://mastodon.social/mattiem), an issue, or a pull request.

By participating in this project you agree to abide by the [Contributor Code of Conduct](CODE_OF_CONDUCT.md).
