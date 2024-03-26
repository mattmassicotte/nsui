#if canImport(AppKit) && !targetEnvironment(macCatalyst)
import AppKit

typealias NSUIFontDescriptor = NSFontDescriptor
extension NSUIFontDescriptor.SymbolicTraits {
	static let traitItalic = Self.italic
	static let traitBold = Self.bold
}

#endif
