#if canImport(AppKit)
import AppKit

public extension NSTextStorage {
	typealias EditActions = NSTextStorageEditActions
}

public typealias NSUITextStorageEditActions = NSTextStorageEditActions

public typealias NSUITextView = NSTextView

public extension NSTextView {
	var text: String {
		get { return string }
		set { string = newValue }
	}
}

#elseif canImport(UIKit)
import UIKit

public typealias NSUITextStorageEditActions = NSTextStorage.EditActions

public typealias NSUITextView = UITextView

#endif
