import UIKit

// Over the road - 7kyu
// Link: https://www.codewars.com/kata/5f0ed36164f2bc00283aed07/train/swift

// Given the street length find the address of the house on the other side of the road.
// Right side has only even numbers, and left side has only odd numbers
// When even numbers increase, odd numbers decrease
 
// Example:
// Street length == 3
// House number 1 will have house number 6 on the opposite side
// House number 2 will have house number 5 on the opposite side
// House number 3 will have house number 4 on the opposite side
// House number 4 will have house number 3 on the opposite side
// House number 5 will have house number 2 on the opposite side
// House number 6 will have house number 1 on the opposite side




// MY approach:
// 1. Street represents amount of houses on one side of the road, so this number needs to be multiplied by 2 in order to get the count of all the houses
// 2. Once we have all the houses we can subtract the address (house number)
// 3. This will give us a house number one lower that what were looking for.
// 4. Adding 1 to get the correct number.

// MARK: - Solution:
func overTheRoad(address: Int, street: Int) -> Int {
  // 1 == street * 2 - 0 == 6
  // 2 == street * 2 - 1 == 5
  // 3 == street * 2 - 2 == 4
  // 4 == street * 2 - 3 == 3
  // 5 == street * 2 - 4 == 2
  // 6 == street * 2 - 5 == 1
  return (street * 2) - address + 1
}


// MARK: - Tests

import XCTest

class OverTheRoadTests: XCTestCase {
    func testExample() {
        XCTAssertEqual(overTheRoad(address: 3, street: 3), 4)
        XCTAssertEqual(overTheRoad(address: 1, street: 6), 12)
        XCTAssertEqual(overTheRoad(address: 6, street: 3), 1)
        XCTAssertEqual(overTheRoad(address: 50, street: 100), 151)
    }
}

OverTheRoadTests.defaultTestSuite.run()

//: [Next](@next)
