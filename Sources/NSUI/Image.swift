import SwiftUI

#if canImport(AppKit)
public typealias NSUIImage = NSImage
#elseif canImport(UIKit)
public typealias NSUIImage = UIImage
#endif

extension Image {
    public init(nsuiImage: NSUIImage) {
#if canImport(AppKit)
            self.init(nsImage: nsuiImage)
#elseif canImport(UIKit)
            self.init(uiImage: nsuiImage)
#endif
    }
}

#if canImport(AppKit)
extension NSImage {
    var cgImage: CGImage? {
        guard let imageData = self.tiffRepresentation,
           let bitmap = NSBitmapImageRep(data: imageData) else {
            return nil
        }
        return bitmap.cgImage
    }
    
    @available(macOS 11.0, *)
    public convenience init?(systemName: String) {
        self.init(systemSymbolName: systemName, accessibilityDescription: systemName)
    }
}
#endif
