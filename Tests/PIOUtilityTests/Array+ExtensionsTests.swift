import XCTest
@testable import PIOUtility

final class Array_ExtensionsTests: XCTestCase {
    
    func testProperValue() {
        let numbers = [1,2,3,4,5]
        let num1 = numbers[safeIndex: 3]
        XCTAssert(num1 == 4)
    }
    
    func testOutOfIndexValue() {
        let numbers = [1,2,3,4,5]
        let num1 = numbers[safeIndex: 9]
        XCTAssert(num1 == nil)
    }
}
