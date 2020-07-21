import UIKit



/*
 You take your son to the forest to see the monkeys. You know that there are a certain number there (n), but your son is too young to just appreciate the full number, he has to start counting them from 1.

 As a good parent, you will sit and count with him. Given the number (n), populate an array with all numbers up to and including that number, but excluding zero.

 For example:

 monkeyCount(10) // --> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
 monkeyCount(1) // --> [1]
 
 
 */



func monkeyCount(_ n: Int) -> [Int] {
    guard n > 0 else { return [] }
    var count : [Int] = []
    for i in 1...n {
        count.append(i)
    }
    return count
}


monkeyCount(-1)


/*
 import XCTest

 class SolutionTest: XCTestCase {
     static var allTests = [
         ("Basic Tests", testBasics),
     ]

     func testBasics() {
         XCTAssertEqual(monkeyCount(5), [1, 2, 3, 4, 5])
         XCTAssertEqual(monkeyCount(3), [1, 2, 3])
         XCTAssertEqual(monkeyCount(9), [1, 2, 3, 4, 5, 6, 7, 8, 9])
         XCTAssertEqual(monkeyCount(10), [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
         XCTAssertEqual(monkeyCount(20), [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20])
     }
     
 }

 XCTMain([
     testCase(SolutionTest.allTests)
 ])
 
 
 
 */



/*
 
 //best ptactice
 //but it crashes at 0 and below numbers
 func monkeyCount(_ n: Int) -> [Int] {
   return Array(1...n)
 }
 
 
 //clever
 func monkeyCount(_ n: Int) -> [Int] {
   guard n > 0 else {return []}
     return Array(1...n)
 }
 
 //others:
 func monkeyCount(_ n: Int) -> [Int] {
     return (1...n).map { $0 }
 }
 
 
 
 */




var str = "Hello, playground"
