//: [Previous](@previous)

import Foundation

/*
 Your task is to add up letters to one letter.

 The function will be given an Array<Character>, each one being a letter to add, and the function will return a Character.

 Notes:

 Letters will always be lowercase.
 Letters can overflow (see second to last example of the description)
 If no letters are given, the function should return 'z'
 
 Examples
 
 addLetters(["a", "b", "c"]) = "f"
 addLetters(["a", "b"]) = "c"
 addLetters(["z"]) = "z"
 addLetters(["z", "a"]) = "a"
 addLetters(["y", "c", "b"]) = "d" // notice the letters overflowing
 addLetters([]) = "z"
 
 
 //my suggestion
 //look into utf
 
 
 */


func addLetters(_ letters: [Character]) -> Character {
    if letters.isEmpty { return "z" }
    
    
    
    return "z"
    
}









/*
 
 
 import XCTest

 class SolutionTest: XCTestCase {
     static var allTests = [
         ("Basic Tests", testBasic),
     ]

     func testBasic() {
         XCTAssertEqual(addLetters(["a", "b", "c"]), "f")
         XCTAssertEqual(addLetters(["z"]), "z")
         XCTAssertEqual(addLetters(["a", "b"]), "c")
         XCTAssertEqual(addLetters(["c"]), "c")
         XCTAssertEqual(addLetters(["z", "a"]), "a")
         XCTAssertEqual(addLetters(["y", "c", "b"]), "d")
         XCTAssertEqual(addLetters([]), "z")
     }
 }

 XCTMain([
     testCase(SolutionTest.allTests)
 ])
 
 
 
 
 
 
 
 
 */

//: [Next](@next)
