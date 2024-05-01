#if canImport(AppKit) && !targetEnvironment(macCatalyst)
extension NSTextStorage {
	public typealias EditActions = NSTextStorageEditActions
}

@available(*, deprecated, renamed: "NSTextStorage.EditActions")
public typealias NSUITextStorageEditActions = NSTextStorageEditActions

extension NSTextView {
	/// A wrapper for the `string` property.
	public var text: String {
		get { return string }
		set { string = newValue }
	}
}

#elseif canImport(UIKit)
@available(*, deprecated, renamed: "NSTextStorage.EditActions")
public typealias NSUITextStorageEditActions = NSTextStorage.EditActions

extension NSLayoutManager {
	public func replaceTextStorage(_ newTextStorage: NSTextStorage) {
		textStorage?.removeLayoutManager(self)

		for manager in textStorage?.layoutManagers ?? [] {
			manager.textStorage = newTextStorage
		}

		newTextStorage.addLayoutManager(self)

		textStorage = newTextStorage
	}
}

#endif

extension NSUITextView {
	/// NSUI wrapper around `layoutManager` property.
	///
	/// This value can be nil on macOS.
	public var nsuiLayoutManager: NSLayoutManager? {
		layoutManager
	}

	/// NSUI wrapper around `textStorage` property.
	///
	/// This value can be nil on macOS.
	public var nsuiTextStorage: NSTextStorage? {
		textStorage
	}

	@available(iOS 15.0, macOS 12.0, tvOS 15.0, *)
	public var nsuiTextContentStorage: NSTextContentStorage? {
#if canImport(AppKit) && !targetEnvironment(macCatalyst)
		textContentStorage
#else
		textContainer.textLayoutManager?.textContentManager as? NSTextContentStorage
#endif
	}

	/// NSUI wrapper around `textContainer` property.
	///
	/// This value can be nil on macOS.
	public var nsuiTextContainer: NSTextContainer? {
		textContainer
	}

	public var nsuiSelectedRange: NSRange {
#if canImport(AppKit) && !targetEnvironment(macCatalyst)
		selectedRange()
#else
		selectedRange
#endif
	}

#if canImport(UIKit)
	public var selectedRanges: [NSValue] {
		get {
			[NSValue(range: selectedRange)]
		}
		set {
			if let range = newValue.first?.rangeValue {
				selectedRange = range
			}
		}
	}
#endif
}
