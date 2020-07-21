//: [Previous](@previous)

import Foundation

/*
 Simple, given a string of words, return the length of the shortest word(s).

 String will never be empty and you do not need to account for different data types.
 
 
 */

func find_short(_ str: String) -> Int
{
    var arrayOfStrings = str.components(separatedBy: [",", " ", ".", "?", "!"]).filter({!$0.isEmpty})
    
    func lenght(value1: String, value2: String) -> Bool {
        return value1.count < value2.count
    }
    
    arrayOfStrings.sort(by: lenght)

    return arrayOfStrings.first?.count ?? 0
}

find_short("Apple Banana, Orange, ")


/*
 //Other solutions:
 func find_short(_ str: String) -> Int
 {
   return str.components(separatedBy: " ").map { $0.count }.min() ?? 0
 }
 
 func find_short(_ str: String) -> Int
 {
   return str.split(separator: " ").min(by: {$0.count < $1.count})!.count
 }
 
 
 
 //Tests:
 import XCTest
 // XCTest Spec Example:
 // TODO: replace with your own tests (TDD), these are just how-to examples to get you started

 class SolutionTest: XCTestCase {
     static var allTests = [
         ("Test Example", testExample),
     ]

     func testExample() {
         XCTAssertEqual(3, find_short("bitcoin take over the world maybe who knows perhaps"))
         XCTAssertEqual(3, find_short("lets talk about javascript the best language"))
         XCTAssertEqual(1, find_short("i want to travel the world writing code one day"))
         XCTAssertEqual(2, find_short("Lets all go on holiday somewhere very cold"))
     }
 }

 XCTMain([
     testCase(SolutionTest.allTests)
 ])
 
 
 
 
 
 */



//: [Next](@next)
