//: [Previous](@previous)

import Foundation




func convert(_ roman: String) -> Int {
  
  //at first you can convert romans to number and add them up
  
  //then youneed to figure out a way to od or substract if previous number is smaller than the next one
  
  
    // let numbers : [Int] = roman.compactMap{Int($0)}
  
  
  
  
  return 0
  
}



func returnInt(from roman: String){
    switch roman {
    case "I" : 1
    case "V" : 5
    case "X" : 10
    case "L" : 50
    case "C" : 100
    case "D" : 500
    case "M" : 1000
    default : 0
    }
}




import XCTest

class RomanNumeralDecoderTests : XCTestCase{
    
    func testOneThruTen() {
        XCTAssertEqual(convert("I"), 1, "❌ Failed converting I")
        XCTAssertEqual(convert("II"), 2, "❌ Failed converting II")
        XCTAssertEqual(convert("III"), 3, "❌ Failed converting III")
        XCTAssertEqual(convert("IV"), 4, "❌ Failed converting IV")
        XCTAssertEqual(convert("V"), 5, "❌ Failed converting V")
        XCTAssertEqual(convert("VI"), 6, "❌ Failed converting VI")
        XCTAssertEqual(convert("VII"), 7, "❌ Failed converting VII")
        XCTAssertEqual(convert("VIII"), 8, "❌ Failed converting VIII")
        XCTAssertEqual(convert("IX"), 9, "❌ Failed converting IX")
        XCTAssertEqual(convert("X"), 10, "❌ Failed converting X")
        
        
    }
    
    func testStandardNumbers(){
        XCTAssertEqual(convert("I"), 1, "❌ Failed converting I")
        XCTAssertEqual(convert("V"), 5, "❌ Failed converting V")
        XCTAssertEqual(convert("X"), 10, "❌ Failed converting X")
        XCTAssertEqual(convert("L"), 50, "❌ Failed converting L")
        XCTAssertEqual(convert("C"), 10, "❌ Failed converting C")
        XCTAssertEqual(convert("D"), 10, "❌ Failed converting D")
        XCTAssertEqual(convert("M"), 10, "❌ Failed converting M")
    }
    
    
    func testRandomLargeNumbers(){
        XCTAssertEqual(convert("CDXLIV"), 444, "❌ Failed converting M")
        XCTAssertEqual(convert("MCMLIV"), 1954, "❌ Failed converting M")
        XCTAssertEqual(convert("MCMXC"), 1990, "❌ Failed converting M")
        XCTAssertEqual(convert("MCMXCIX"), 1999, "❌ Failed converting M")
        XCTAssertEqual(convert("MM"), 2000, "❌ Failed converting M")
        XCTAssertEqual(convert("MMVIII"), 2008, "❌ Failed converting M")
        XCTAssertEqual(convert("MMM"), 3000, "❌ Failed converting M")
        XCTAssertEqual(convert("MMMCM"), 3900, "❌ Failed converting M")
        XCTAssertEqual(convert("MMMCMXIV"), 3914, "❌ Failed converting M")
        
    }
}

RomanNumeralDecoderTests.defaultTestSuite.run()

//: [Next](@next)
