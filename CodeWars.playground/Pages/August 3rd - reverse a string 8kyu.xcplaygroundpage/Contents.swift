//: [Previous](@previous)

import Foundation

// reverse a strig
// example world -> dlrow


func reverse(_ str: String) -> String {
    return String(str.reversed())
}


reverse("")



/*
 
 /other solutions:
 func reverse(_ str: String) -> String {
 var reverse = ""
  for s in str {
    reverse = String(s) + reverse
  }
     return reverse
 }
 
 
 //tests:
 
 import XCTest

 class SolutionTest: XCTestCase {
     static var allTests = [
         ("Short words", testShortWords),
         ("Longer words", testLongerWords)
     ]

     func testShortWords() {
         XCTAssertEqual(reverse("hello"), "olleh")
         XCTAssertEqual(reverse("rat"), "tar")
         XCTAssertEqual(reverse("alpha"), "ahpla")
     }
     
     func testLongerWords() {
         XCTAssertEqual(reverse("codewars"), "srawedoc")
         XCTAssertEqual(reverse("football"), "llabtoof")
         XCTAssertEqual(reverse("translation"), "noitalsnart")
     }
 }

 XCTMain([
     testCase(SolutionTest.allTests)
 ])
 
 
 
 
 
 */

//: [Next](@next)
