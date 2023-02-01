import XCTest
@testable import NSUI

final class MyController: NSUIViewController {
}

final class ControllerTests: XCTestCase {
	func testControllerClassDefinition() throws {
		let _ = MyController()
	}
}
