import SwiftUI

#if canImport(AppKit) && !targetEnvironment(macCatalyst)
public extension NSImageView {
    var tintColor: NSUIColor {
        @available(*, unavailable)
        get {
            fatalError("Unavailable")
        }
        set {
            guard
                let selfImage = self.image
            else {
                return
            }
            let image = NSImage(size: selfImage.size, flipped: false) { (rect) -> Bool in
                newValue.set()
                rect.fill()
                selfImage.draw(in: rect, from: NSRect(origin: .zero, size: selfImage.size), operation: .destinationIn, fraction: 1.0)
                return true
            }
            self.image = image
        }
    }
}
#endif
