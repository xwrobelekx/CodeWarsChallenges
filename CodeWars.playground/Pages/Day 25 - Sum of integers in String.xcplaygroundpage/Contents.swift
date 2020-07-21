//: [Previous](@previous)

import Foundation

/*
 Your task in this kata is to implement a function that calculates the sum of the integers inside a string. For example, in the string "The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog", the sum of the integers is 3635.
 
 //Only poistove integers will be tested.
 
 */


func sumOfIntegersInString(_ string: String) -> Int {
    var numbers = [Int]()
    var stringNumer = ""
    
    for letter in string.indices {
        if Int(String(string[letter])) != nil {
            stringNumer += String(string[letter])
        } else {
            if let number = Int(stringNumer){
            numbers.append(number)
                stringNumer = ""
            }
        }
    }
    if let number = Int(stringNumer){
        numbers.append(number)
        stringNumer = ""
    }
    return numbers.reduce(0) {$0 + $1}
}



sumOfIntegersInString("12.4")//, 16)
sumOfIntegersInString("h3ll0w0rld")//, 3)
sumOfIntegersInString("2 + 3 = ")//, 5)
sumOfIntegersInString("Our company made approximately 1 million in gross revenue last quarter.")//, 1)
sumOfIntegersInString("The Great Depression lasted from 1929 to 1939.")//, 3868)
sumOfIntegersInString("Dogs are our best friends.")//, 0)
sumOfIntegersInString("C4t5 are 4m4z1ng.")//, 18)
sumOfIntegersInString("The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog")//, 3635)








/*
 
 
 import XCTest

 class SolutionTest: XCTestCase {
     static var allTests = [
         ("Example test cases", exampleTests),
     ]

     func exampleTests() {
         XCTAssertEqual(sumOfIntegersInString("12.4"), 16)
         XCTAssertEqual(sumOfIntegersInString("h3ll0w0rld"), 3)
         XCTAssertEqual(sumOfIntegersInString("2 + 3 = "), 5)
         XCTAssertEqual(sumOfIntegersInString("Our company made approximately 1 million in gross revenue last quarter."), 1)
         XCTAssertEqual(sumOfIntegersInString("The Great Depression lasted from 1929 to 1939."), 3868)
         XCTAssertEqual(sumOfIntegersInString("Dogs are our best friends."), 0)
         XCTAssertEqual(sumOfIntegersInString("C4t5 are 4m4z1ng."), 18)
         XCTAssertEqual(sumOfIntegersInString("The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog"), 3635)
     }

 }

 XCTMain([
     testCase(SolutionTest.allTests)
 ])
 
 
 
 */
//: [Next](@next)
