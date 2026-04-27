#if os(macOS)
extension IndexPath {
	public var row: Int {
		item
	}
	
	public init(row: Int, section: Int) {
		self.init(item: row, section: section)
	}
}
#endif
