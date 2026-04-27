#if os(macOS)
extension NSTableView {
	public var indexPathsForVisibleRows: [IndexPath]? {
		let rows = rows(in: visibleRect)
		
		return (rows.lowerBound..<rows.upperBound).map { i in
			IndexPath(arrayLiteral: 0, i)
		}
	}
	
	public func rectForRow(at indexPath: IndexPath) -> CGRect {
		rect(ofRow: indexPath.row)
	}
}
#endif
