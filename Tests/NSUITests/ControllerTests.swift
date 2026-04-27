import XCTest
@testable import NSUI

#if !os(watchOS)
final class MyController: NSUIViewController {
}

final class ControllerTests: XCTestCase {
	@MainActor
	func testControllerClassDefinition() throws {
		let _ = MyController()
	}
}
#endif
