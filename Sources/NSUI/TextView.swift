#if canImport(AppKit) && !targetEnvironment(macCatalyst)
import AppKit

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
import UIKit

@available(*, deprecated, renamed: "NSTextStorage.EditActions")
public typealias NSUITextStorageEditActions = NSTextStorage.EditActions

#endif

extension NSUITextView {
	/// NSUI wrapper around `layoutManager` property.
	///
	/// This value can be nil on macOS.
	public var nsuiLayoutManager: NSLayoutManager? {
		layoutManager
	}
}
