//: [Previous](@previous)

import Foundation

/*
 
 Modify the spacify function so that it returns the given string with spaces inserted between each character.

 spacify("hello world") // "h e l l o   w o r l d"
 
 
 
 */

func spacify1(_ str: String) -> String {
    var spacedString = ""
    str.forEach{ spacedString += "\($0) "}
    return "\(spacedString.dropLast())"
}



/*
 
 //solution 1
 
 func spacify(_ str: String) -> String {
     var spacedString = ""
     for character in str {
         spacedString += "\(character) "
         
     }
     print("\(spacedString.dropLast())")
     return ("\(spacedString.dropLast())")
     
 }
 
 //other solutions:
 
 func spacify(_ str: String) -> String {
   return str.map { String($0) }.joined(separator: " ")
 }
 
 
 
 
 
 
 
 import XCTest

 class SolutionTest: XCTestCase {
     static var allTests = [
         ("Basic Tests", testBasics),
     ]

     func testBasics() {
         XCTAssertEqual(spacify("hello world"), "h e l l o   w o r l d")
         XCTAssertEqual(spacify("12345"),"1 2 3 4 5")
         XCTAssertEqual(spacify(""), "")
         XCTAssertEqual(spacify("a"),"a")
         XCTAssertEqual(spacify("Pippi"),"P i p p i")
     }

 }

 XCTMain([
     testCase(SolutionTest.allTests)
 ])
 
 
 
 
 */

//: [Next](@next)
