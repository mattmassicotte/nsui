import SwiftUI

#if canImport(AppKit)
public extension NSImageView {
    func tintColor(color: NSUIColor) {
        guard
            let selfImage = self.image
        else { return }
        let image = NSImage(size: selfImage.size, flipped: false) { (rect) -> Bool in
            color.set()
            rect.fill()
            selfImage.draw(in: rect, from: NSRect(origin: .zero, size: selfImage.size), operation: .destinationIn, fraction: 1.0)
            return true
        }
        self.image = image
    }
}
#endif
