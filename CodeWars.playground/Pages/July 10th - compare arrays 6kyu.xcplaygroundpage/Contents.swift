//: [Previous](@previous)

import Foundation


//compare two arrays

func comp(_ a: [Int], _ b: [Int]) -> Bool {

    //this line of code was thorwin my solution in wrong direction
 // if a.isEmpty || b.isEmpty || a.count != b.count { return false }
  
  let aSquared = a.map{$0 * $0}
  
  if aSquared.sorted() == b.sorted() {
    print(aSquared.sorted())
    print(b.sorted())
    return true
  }
    return false
}


//other solutions:
func comp2(_ a: [Int], _ b: [Int]) -> Bool {
    return a.map{ $0 * $0 }.sorted() == b.sorted()
}


let firstArray = [0, -10, 0]
let secondArray = [-100, 0, 0]

comp(firstArray, secondArray)

comp2(firstArray, secondArray)

/*
// Other solutions:
 
 
 
 
// Tests
 
 import XCTest

 class SolutionTest: XCTestCase {
     static var allTests = [
         ("comp", testExample),
     ]

     func testing(_ a: [Int], _ b: [Int], _ expected: Bool) {
         XCTAssertTrue(comp(a, b) == expected, "should return \(expected)")
     }

     func testExample() {
         var a1 = [121, 144, 19, 161, 19, 144, 19, 11];
         var a2 = [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19];
         testing(a1, a2, true);
         a1 = [121, 144, 19, 161, 19, 144, 19, 11];
         a2 = [11*21, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19];
         testing(a1, a2, false);
     }
 }

 XCTMain([
     testCase(SolutionTest.allTests)
 ])
 
 */

//: [Next](@next)
