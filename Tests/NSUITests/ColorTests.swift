import SwiftUI
import XCTest

import NSUI

final class ColorTests: XCTestCase {
	func testInit() {
		let _ = Color(nsuiColor: NSUIColor.red)
	}
}
