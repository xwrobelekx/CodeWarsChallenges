//: [Previous](@previous)

import Foundation


/*
 Given a two-dimensional array of integers, return the flattened version of the array with all the integers in the sorted (ascending) order.

 Example:

 Given [[3, 2, 1], [4, 6, 5], [], [9, 7, 8]], your function should return [1, 2, 3, 4, 5, 6, 7, 8, 9].
 
 
 
 
 */

// this solution took 15 min with sime googling
func flattenAndSort2<T: Comparable>(_ arr: [[T]]) -> [T] {
   return arr.flatMap{ $0.flatMap { $0 }.sorted()
}

flattenAndSort2([[1, 4, 6], [2, 5, 7], [9, 8]])


//this solution done in 5 min.

func flattenAndSort<T: Comparable>(_ arr: [[T]]) -> [T] {
var flatArray = [T]()
    for nestedArray in arr {
        for number in nestedArray {
            flatArray.append(number)
        }
    }
    return flatArray.sorted()

}


flattenAndSort([[1, 4, 6], [2, 5, 7], [9, 8]])


//other solutions:
func flattenAndSort3<T: Comparable>(_ arr: [[T]]) -> [T] {
    return arr.joined().sorted()
}


func flattenAndSort4<T: Comparable>(_ arr: [[T]]) -> [T] {
  return arr.flatMap{ $0 }.sorted()
}

flattenAndSort4([[1, 4, 6], [2, 5, 7], [9, 8]])

/*
 
 import XCTest

 class SolutionTest: XCTestCase {
     static var allTests = [
         ("Basic Tests", testBasics),
    ]

     func testBasics() {
       XCTAssertEqual(flattenAndSort([[Int]]()), [])
       XCTAssertEqual(flattenAndSort([[Int](), []]), [])
       XCTAssertEqual(flattenAndSort([[], [1]]), [1])
       XCTAssertEqual(flattenAndSort([[], [], [], [2], [], [1]]), [1, 2])
       XCTAssertEqual(flattenAndSort([[3, 2, 1], [7, 9, 8], [6, 4, 5]]), [1, 2, 3, 4, 5, 6, 7, 8, 9])
       XCTAssertEqual(flattenAndSort([[1, 3, 5], [100], [2, 4, 6]]), [1, 2, 3, 4, 5, 6, 100])
       XCTAssertEqual(flattenAndSort([[111, 999], [222], [333], [444], [888], [777], [666], [555]]), [111, 222, 333, 444, 555, 666, 777, 888, 999])
     }
     
 }

 XCTMain([
     testCase(SolutionTest.allTests)
 
 
 
 */

//: [Next](@next)
