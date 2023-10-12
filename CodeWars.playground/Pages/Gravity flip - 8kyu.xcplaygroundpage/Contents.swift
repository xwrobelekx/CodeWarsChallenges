//: [Previous](@previous)

import Foundation

// Gravity flip - 8kyu
// Link: https://www.codewars.com/kata/5f70c883e10f9e0001c89673

// Objective: Given direction of ether Left (L) or Right (R) sort the array (a) in corresponding order.

// Example:
/*
 * 'R', [3, 2, 1, 2]      ->  [1, 2, 2, 3]
 * 'L', [1, 4, 5, 3, 5 ]  ->  [5, 5, 4, 3, 1]
*/

// My approach:
// 1. Switch on the direction
// 2. Base on the direction, use sorted(by:) function to sort element
// 3. Return those sorted elements or empty array if something goes wrong.

// MARK: - My Solution
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

// MARK: - Other Solutions:

 func flip2(_ direction: String, _ a: [Int]) -> [Int] {
    return a.sorted(by: direction == "L" ? (>) : (<))
 }
 
 func flip3(_ direction: String, _ a: [Int]) -> [Int] {
     return direction == "R" ? a.sorted() : a.sorted().reversed()
 }

// MARK: - Tests

import XCTest

class GravityFlipTests: XCTestCase {
    
    func testRightFlip() {
        XCTAssertEqual(flip("R", [3, 2, 1, 2]), [1, 2, 2, 3])
        XCTAssertEqual(flip2("R", [3, 2, 1, 2]), [1, 2, 2, 3])
        XCTAssertEqual(flip3("R", [3, 2, 1, 2]), [1, 2, 2, 3])
    }
    
    func testLeftFlip() {
        XCTAssertEqual(flip("L", [1, 4, 5, 3, 5]), [5, 5, 4, 3, 1])
        XCTAssertEqual(flip2("L", [1, 4, 5, 3, 5]), [5, 5, 4, 3, 1])
        XCTAssertEqual(flip3("L", [1, 4, 5, 3, 5]), [5, 5, 4, 3, 1])
    }
    
    func testInvalid() {
        XCTAssertEqual(flip("X", []), [])
        XCTAssertEqual(flip2("X", []), [])
        XCTAssertEqual(flip3("X", []), [])
    }
    
}

GravityFlipTests.defaultTestSuite.run()

//: [Next](@next)
