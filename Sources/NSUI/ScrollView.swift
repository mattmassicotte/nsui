#if os(macOS)
extension NSScrollView {
	public var contentOffset: CGPoint {
		contentView.bounds.origin
	}

	public var contentInset: NSEdgeInsets {
		self.contentInsets
	}
}
#endif
