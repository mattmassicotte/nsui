#if canImport(AppKit) && !targetEnvironment(macCatalyst)
import AppKit

extension NSUIFontDescriptor.SymbolicTraits {
	public static let traitItalic = Self.italic
	public static let traitBold = Self.bold
	public static let traitExpanded = Self.expanded
	public static let traitCondensed = Self.condensed
	public static let traitMonoSpace = Self.monoSpace
}

#endif
