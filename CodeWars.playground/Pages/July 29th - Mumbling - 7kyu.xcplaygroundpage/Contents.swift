//: [Previous](@previous)

import Foundation


/*
 //Mumbling 7kyu
 
 This time no story, no theory. The examples below show you how to write function accum:

 Examples:

 accum("abcd") -> "A-Bb-Ccc-Dddd"
 accum("RqaEzty") -> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
 accum("cwAt") -> "C-Ww-Aaa-Tttt"
 The parameter of accum is a string which includes only letters from a..z and A..Z.
 
 */



func accum(_ s: String) -> String {
    
    guard s != "" else {return ""}
  
  var result = ""
  
  for (index, character) in s.enumerated() {
    
    for num in 0...index {
      if num == 0 {
        result += "\(character.uppercased())"
      } else {
        result += "\(character.lowercased())"
      }
      
    }
    result += "-"
  }
    
    result.removeLast(1)
   
    return result
}

accum("")

//Learned about removeLast(), removeLast(1),
//String has a method to have words capitalized



/*
 //Other Solutions
 
 func accum(_ str: String) -> String {
     return str.enumerated().map {
         String(repeating: $1, count: $0 + 1).capitalized
     }.joined(separator: "-")
 }
 
 
 
 //Tests
 import XCTest
 // XCTest Spec Example:
 // TODO: replace with your own tests (TDD), these are just how-to examples to get you started

 class SolutionTest: XCTestCase {
     static var allTests = [
         ("Test Accum", testAccum),
         ("Test Accum", testAccum1),
         ("Test Accum", testAccum2)
     ]

     func testAccum() {
         XCTAssertEqual(accum("abcd"), "A-Bb-Ccc-Dddd")
     }

     func testAccum1() {
         XCTAssertEqual(accum("RqaEzty"), "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy")
     }

     func testAccum2() {
         XCTAssertEqual(accum("cwAt"), "C-Ww-Aaa-Tttt")
     }
 }

 XCTMain([
     testCase(SolutionTest.allTests)
 ])
 */



//: [Next](@next)
