import SwiftUI

#if canImport(AppKit) && !targetEnvironment(macCatalyst)
import AppKit

extension NSUIResponder {
	public var canBecomeFirstResponder: Bool {
		get { acceptsFirstResponder }
	}
}

extension NSUIActivityIndicatorView {
    public func startAnimating() {
        self.startAnimation(nil)
    }
    
    public func stopAnimating() {
        self.stopAnimation(nil)
    }
}


#elseif canImport(UIKit)
import UIKit

// I think this is a cool idea, but haven't quite worked it out
final class NSUIHostingView<Content: View>: UIView {
}

#endif
