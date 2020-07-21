//: [Previous](@previous)

import Foundation


//The first century spans from the year 1 up to and including the year 100, The second - from the year 101 up to and including the year 200, etc.

/*
 xctests
 
 centuryFromYear(1705)  returns (18)
 centuryFromYear(1900)  returns (19)
 centuryFromYear(1601)  returns (17)
 centuryFromYear(2000)  returns (20)
 
 
 */


func century(_ year: Int) -> Int {
    guard year > 0 else { return 0}
    guard year != 1 else {return 1}
    return ((year - 1) / 100 ) + 1
    
}


century(1705)
century(95)
century(-20)

//learn how to write bacic tests.



//import XCTest
//
//class SolutionTest: XCTestCase {
//    static var allTests = [
//        ("Basic tests", basicTests),
//    ]
//
//    func basicTests() {
//        XCTAssertEqual(century(1705), 18)
//        XCTAssertEqual(century(1900), 19)
//        XCTAssertEqual(century(1601), 17)
//        XCTAssertEqual(century(2000), 20)
//        XCTAssertEqual(century(89), 1)
//    }
//}
//
//XCTMain([
//    testCase(SolutionTest.allTests)
//])
//




/*
 Others solutions:

 
 //best practice:
 func century(_ year: Int) -> Int {
     return Int((Double(year) / 100).rounded(.up))
 }
 
 
 func century(_ year: Int) -> Int {
     let century = year % 100 == 0 ? (year / 100) : (year / 100) + 1
     return century
 }
 
 
 func century(_ year: Int) -> Int {
     return Int(ceil(Double(year)/100.0))
 }
 
 
 func century(_ year: Int) -> Int {
   return Int((year + 99) / 100)
 }
 
 
 
 */



//: [Next](@next)
