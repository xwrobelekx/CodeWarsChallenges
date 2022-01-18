//: [Previous](@previous)

import Foundation

/*
 Convert number to reversed array of digits

 Given a random number:

 C#: long;
 C++: unsigned long;
 You have to return the digits of this number within an array in reverse order.

 Example:

 348597 => [7,9,5,8,4,3]
 
 
 
 */
func digitize(_ num:Int) -> [Int] {
  var arrayOfNumbers = [String]()
  let stringNumber = String(num)
  let reversedString = String(stringNumber.reversed())
  
  for char in reversedString {
      arrayOfNumbers.append(String(char))
  }
  return arrayOfNumbers.map(){Int($0)!}
  
}

//no reversed

func digitize2(_ num:Int) -> [Int] {
    
    //Solution 1
//    var arrayOfNumbers = [String]()
//    let stringNumber = String(num)
//    var reversedStringNumber = [String]()
//    //reversing string without .reversed()
//    for char in stringNumber {
//        reversedStringNumber.insert(String(char), at: 0)
//    }
//
//    for char in reversedStringNumber {
//        arrayOfNumbers.append(String(char))
//    }
//    return arrayOfNumbers.map(){Int($0)!}
    
    
    //Solution 2
    
     return String(num).compactMap{Int(String($0))}.reversed()
    
}


digitize(1234)

/*
 Other Solutions:
 
 func digitize(_ num:Int) -> [Int] {
   return String(num).characters.flatMap { Int(String($0)) }.reversed()
 }
 
 
 
 
 
 import XCTest
 // XCTest Spec Example:
 // TODO: replace with your own tests (TDD), these are just how-to examples to get you started

 class SolutionTest: XCTestCase {
     static var allTests = [
         ("testReversedArrayOfDigits", testReversedArrayOfDigits),
         ("testReversedArrayOfDigitsEdgeCases", testReversedArrayOfDigitsEdgeCases),
     ]

     func testReversedArrayOfDigits() {
         XCTAssertEqual(digitize(123), [3, 2, 1])
         XCTAssertEqual(digitize(348597), [7,9,5,8,4,3])
         XCTAssertEqual(digitize(35231),[1,3,2,5,3])
         XCTAssertEqual(digitize(23582357),[7,5,3,2,8,5,3,2])
         XCTAssertEqual(digitize(984764738),[8,3,7,4,6,7,4,8,9])
         XCTAssertEqual(digitize(45762893920),[0,2,9,3,9,8,2,6,7,5,4])
         XCTAssertEqual(digitize(548702838394),[4,9,3,8,3,8,2,0,7,8,4,5])
     }
     
     func testReversedArrayOfDigitsEdgeCases() {
         XCTAssertEqual(digitize(0), [0])
         XCTAssertEqual(digitize(1), [1])
     }
 }

 XCTMain([
     testCase(SolutionTest.allTests)
 ])
 
 
 
 
 
 
 */
//: [Next](@next)
