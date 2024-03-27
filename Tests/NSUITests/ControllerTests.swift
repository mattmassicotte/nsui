import XCTest
@testable import NSUI

final class MyController: NSUIViewController {
}

final class ControllerTests: XCTestCase {
	@MainActor
	func testControllerClassDefinition() throws {
		let _ = MyController()
	}
}
