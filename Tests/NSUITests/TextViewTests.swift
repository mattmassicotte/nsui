import XCTest
@testable import NSUI

final class nsuiTests: XCTestCase {
    func testTextViewText() throws {
        let textView = NSUITextView()

		textView.text = "abc"

		XCTAssertEqual(textView.text, "abc")
    }

	func testEditActions() throws {
		let edit = NSUITextStorageEditActions.editedAttributes

		XCTAssertTrue(edit.contains(.editedAttributes))
	}
}
