//: [Previous](@previous)

import Foundation

//Convert boolean values to string "Yes" or "No"


func boolToWord(_ bool: Bool) -> String {
  return bool ? "Yes" : "No"
}




import XCTest


class BoolTests : XCTestCase {
    
    
    func testExample1(){
        XCTAssertEqual(boolToWord(true), "Yes", "Input: true")
    }
    
    func testExample2(){
        XCTAssertEqual(boolToWord(false), "No", "Input: false")
    }
}

BoolTests.defaultTestSuite.run()


//: [Next](@next)
