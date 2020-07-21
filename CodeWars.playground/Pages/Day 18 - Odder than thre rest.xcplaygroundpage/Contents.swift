//: [Previous](@previous)

import Foundation


/*
 
 Create a function oddOne that takes an [Int] as input and outputs the index at which the sole odd number is located.

 This method should work with arrays with negative numbers. If there are no odd numbers in the array, then the method should output nil.

 Examples:

 oddOne([2,4,6,7,10]) // => 3
 oddOne([2,16,98,10,13,78]) // => 4
 oddOne([4,-8,98,-12,-7,90,100]) // => 4
 oddOne([2,4,6,8]) // => nil
 
 
 
 
 
 
 */





//solution 1
func oddOne(_ arr: [Int]) -> Int? {
    for (index, number) in arr.enumerated() {
        if !number.isMultiple(of: 2) {
            return index
        }
    }
    return nil
}

oddOne([2, 4, 6, 7])

//solution 2






/*
 //other solutions:
 func oddOne(_ arr: [Int]) -> Int? {
   return arr.firstIndex { $0 % 2 != 0 }
 }

 
 func oddOne(_ arr: [Int]) -> Int? {
     return arr.firstIndex(where: { $0 % 2 != 0 })
 }



import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Basic Tests", testBasics),
    ]

    func testBasics() {
        XCTAssertEqual(oddOne([2,4,6,7,10]), 3)
        XCTAssertEqual(oddOne([2,16,98,10,13,78]), 4)
        XCTAssertEqual(oddOne([4,-8,98,-12,-7,90,100]), 4)
        XCTAssertEqual(oddOne([2,4,6,8]), nil)
    }
}

XCTMain([
    testCase(SolutionTest.allTests)
])





*/





//: [Next](@next)
