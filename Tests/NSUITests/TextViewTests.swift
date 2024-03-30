import XCTest
import NSUI

final class StorageDelegate: NSObject, NSTextStorageDelegate {
	func textStorage(_ textStorage: NSTextStorage, willProcessEditing editedMask: NSTextStorage.EditActions, range editedRange: NSRange, changeInLength delta: Int) {

	}

	func textStorage(_ textStorage: NSTextStorage, didProcessEditing editedMask: NSTextStorage.EditActions, range editedRange: NSRange, changeInLength delta: Int) {
	}
}

final class TextViewTests: XCTestCase {
	@MainActor
    func testTextViewText() throws {
        let textView = NSUITextView()

		textView.text = "abc"

		XCTAssertEqual(textView.text, "abc")
    }

	@MainActor
	func testEditActions() throws {
		let edit = NSTextStorage.EditActions.editedAttributes

		XCTAssertTrue(edit.contains(.editedAttributes))
	}
}
