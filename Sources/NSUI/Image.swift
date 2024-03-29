import SwiftUI

extension Image {
	public init(nsuiImage: NSUIImage) {
#if canImport(AppKit) && !targetEnvironment(macCatalyst)
		self.init(nsImage: nsuiImage)
#elseif canImport(UIKit)
		self.init(uiImage: nsuiImage)
#endif
	}
}

@available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
extension ImageRenderer {
	@MainActor
	public var nsuiImage: NSUIImage? {
#if canImport(AppKit) && !targetEnvironment(macCatalyst)
		return nsImage
#elseif canImport(UIKit)
		return uiImage
#else
		return nil
#endif
	}
}

#if canImport(AppKit) && !targetEnvironment(macCatalyst)
extension NSImage {
	public var cgImage: CGImage? {
		guard
			let imageData = self.tiffRepresentation,
			let bitmap = NSBitmapImageRep(data: imageData)
		else {
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
