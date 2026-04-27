#if os(macOS)
@available(macOS 11.0, *)
extension NSTableViewDiffableDataSource {
	public convenience init(
		tableView: NSTableView,
		cellProvider: @escaping (NSTableView, IndexPath, ItemIdentifierType) -> NSView
	) {
		self.init(tableView: tableView) { tableView, _, row, item in
			cellProvider(tableView, IndexPath(item: row, section: 0), item)
		}
	}
	
	public func indexPath(for itemIdentifier: ItemIdentifierType) -> IndexPath? {
		guard let row = row(forItemIdentifier: itemIdentifier) else {
			return nil
		}
		
		return IndexPath(item: row, section: 0)
	}
	
	public func itemIdentifier(for indexPath: IndexPath) -> ItemIdentifierType? {
		itemIdentifier(forRow: indexPath.row)
	}
}
#endif
