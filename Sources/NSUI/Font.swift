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

extension NSUIFontDescriptor {
	/// NSUI wrapper around `withSymbolicTraits`.
	///
	/// This can return a nil value on iOS/visionOS.
	public func nsuiWithSymbolicTraits(_ symbolicTraits: NSUIFontDescriptor.SymbolicTraits) -> NSUIFontDescriptor? {
		withSymbolicTraits(symbolicTraits)
	}
}

extension NSUIFont {
	/// NSUI wrapper around `init`.
	///
	/// This initializer can fail on macOS.
	public convenience init?(nsuiDescriptor: NSUIFontDescriptor, size: CGFloat) {
		self.init(descriptor: nsuiDescriptor, size: size)
	}
}
