#if canImport(AppKit) && !targetEnvironment(macCatalyst)
import AppKit

extension NSTextStorage {
	public typealias EditActions = NSTextStorageEditActions
}

@available(*, deprecated, renamed: "NSTextStorage.EditActions")
public typealias NSUITextStorageEditActions = NSTextStorageEditActions

extension NSTextView {
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
