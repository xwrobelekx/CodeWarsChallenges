//: [Previous](@previous)

import Foundation
/*
 In a factory a printer prints labels for boxes. For one kind of boxes the printer has to use colors which, for the sake of simplicity, are named with letters from a to m.

 The colors used by the printer are recorded in a control string. For example a "good" control string would be aaabbbbhaijjjm meaning that the printer used three times color a, four times color b, one time color h then one time color a...

 Sometimes there are problems: lack of colors, technical malfunction and a "bad" control string is produced e.g. aaaxbbbbyyhwawiwjjjwwm with letters not from a to m.

 You have to write a function printer_error which given a string will output the error rate of the printer as a string representing a rational whose numerator is the number of errors and the denominator the length of the control string. Don't reduce this fraction to a simpler expression.

 The string has a length greater or equal to one and contains only letters from ato z.

 #Examples:

 s="aaabbbbhaijjjm"
 error_printer(s) => "0/14"

 s="aaaxbbbbyyhwawiwjjjwwm"
 error_printer(s) => "8/22"
 
 
 */

/*
 1. Listen: String >= 1 do it wont be empty
 2. contains only letters from a thru z, so we dont have to worry about any other characters
 3. doesnt say anything about being lowered cased, so i should have that covered
 4. looks like there might be other characters or uppercased characters
 
 */

//let check for the correct letters insted of checking for the wrong letters



func printerError(_ s: String) -> String {
    let goodLetters = ["a": true, "b": true, "c": true, "d": true, "e": true, "f": true, "g": true, "h": true, "i": true, "j": true, "k": true, "l": true, "m": true]
    var erroeCount = 0
    
    for letter in s.lowercased() {
        if goodLetters["\(letter)"] == true {
        } else {
            erroeCount += 1
        }
    }
    return "\(erroeCount)/\(s.count)"
}




var s = "aaabbbbhaijjjm"
printerError(s) //=> "0/14"

s = "aaaxbbbbyyhwawiwjjjwwm"
printerError(s) //=> "8/22"

/*
 Other Solutions
 func printerError(_ s: String) -> String {
     let errors = s.filter { $0 > "m" }
     return "\(errors.count)/\(s.count)"
 }
 
 func printerError(_ s: String) -> String {
   let num = s.reduce(0) { ("a"..."m").contains($1) ? $0 : $0 + 1 }
   return "\(num)/\(s.count)"
 }
 
 func printerError(_ s: String) -> String {
  return "\(s.filter {$0 > "m" }.count)/\(s.count)"
 }
 
 
 */


/*
 
 
 import XCTest
 // XCTest Spec Example:
 // TODO: replace with your own tests (TDD), these are just how-to examples to get you started

 class SolutionTest: XCTestCase {
     static var allTests = [
         ("Test Example", testExample),
     ]

     func testExample() {
         let actual = 1
         XCTAssertEqual(actual, 1)
     }
 }

 XCTMain([
     testCase(SolutionTest.allTests)
 ])
 
 
 */
//: [Next](@next)
