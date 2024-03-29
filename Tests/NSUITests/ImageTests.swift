import SwiftUI
import XCTest

import NSUI

final class ImageTests: XCTestCase {
	func testInit() {
		let _ = Image(nsuiImage: NSUIImage())
	}
}

