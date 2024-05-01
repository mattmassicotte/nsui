import SwiftUI

#if canImport(AppKit) && !targetEnvironment(macCatalyst)
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
// I think this is a cool idea, but haven't quite worked it out
final class NSUIHostingView<Content: View>: UIView {
}

extension UIView {
	public var visibleRect: CGRect {
		superview?.bounds.intersection(frame) ?? .zero
	}
}

#endif
