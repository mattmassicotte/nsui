import SwiftUI

#if canImport(AppKit)
import AppKit

public typealias NSUIView = NSView

public typealias NSUIResponder = NSResponder

extension NSUIResponder {
	public var canBecomeFirstResponder: Bool {
		get { acceptsFirstResponder }
	}
}

#elseif canImport(UIKit)
import UIKit

public typealias NSUIView = UIView

// I think this is a cool idea, but haven't quite worked it out
final class NSUIHostingView<Content: View>: UIView {
}

public typealias NSUIResponder = UIResponder


#endif
