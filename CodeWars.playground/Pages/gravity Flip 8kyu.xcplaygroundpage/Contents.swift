//: [Previous](@previous)

import Foundation

// Gravity flip - 8kyu

/*
 * 'R', [3, 2, 1, 2]      ->  [1, 2, 2, 3]
 * 'L', [1, 4, 5, 3, 5 ]  ->  [5, 5, 4, 3, 1]
 */

//MARK: - My Solution
func flip(_ direction: String, _ a: [Int]) -> [Int] {
  switch direction {
    case "L":
    return a.sorted(by: >)

    case "R" :
    return a.sorted()
    
    default:
    return []
  }
}



// MARK: - Tests

import XCTest

class GravityFlipTests: XCTestCase {
    
    func testRightFlip() {
        XCTAssertEqual(flip("R", [3, 2, 1, 2]), [1, 2, 2, 3])
    }
    
    func testLeftFlip() {
        XCTAssertEqual(flip("L", [1, 4, 5, 3, 5]), [5, 5, 4, 3, 1])
    }
    
    func testInvalid() {
        XCTAssertEqual(flip("X", []), [])
    }
    
}

GravityFlipTests.defaultTestSuite.run()

//: [Next](@next)
