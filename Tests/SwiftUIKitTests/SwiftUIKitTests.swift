import XCTest
@testable import SwiftUIKit

final class SwiftUIKitTests: XCTestCase {
    func testVersion() {
        XCTAssertFalse(SwiftUIKit.version.isEmpty)
    }
}
