#if canImport(AppKit)
import AppKit

public typealias NSUIView = NSView

#elseif canImport(UIKit)
import UIKit

public typealias NSUIView = UIView
#endif
