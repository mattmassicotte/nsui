import SwiftUI
import XCTest

import NSUI

final class ColorTests: XCTestCase {
	@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
	func testInit() {
		let _ = Color(nsuiColor: NSUIColor.red)
	}
}
