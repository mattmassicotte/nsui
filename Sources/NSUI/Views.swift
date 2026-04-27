import SwiftUI

#if canImport(UIKit)
// I think this is a cool idea, but haven't quite worked it out
final class NSUIHostingView<Content: View>: UIView {
}

extension UIView {
	public var visibleRect: CGRect {
		superview?.bounds.intersection(frame) ?? .zero
	}
}
#elseif canImport(AppKit)
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
#endif
