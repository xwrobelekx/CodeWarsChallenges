//: [Previous](@previous)

import Foundation




//func convert(_ roman: String) -> Int {
//
//    let numbers : [Int] = roman.compactMap{returnInt(from:$0)}
//
//    var result = 0
//
//
//    var i = 0
//    while i < numbers.count {
//        let previousNumber = numbers[i]
////        if i + 1 < numbers.count {
//      //  guard let currentNumber = numbers[i + 1] else {continue}
//        if previousNumber < currentNumber {
//            let n = currentNumber - previousNumber
//            result += n
//            i += 2
//
//        } else {
//            result += previousNumber
//            i += 1
//        }
//
//    }
//    return result
//}
//
//
//
//func returnInt(from roman: Character) -> Int{
//    switch roman {
//    case "I" : return 1
//    case "V" : return 5
//    case "X" : return 10
//    case "L" : return 50
//    case "C" : return 100
//    case "D" : return 500
//    case "M" : return 1000
//    default : return 0
//    }
//}



let symbolValues: [Character: Int] = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000,]

func convert(_ string: String) -> Int {
    var result = 0
    
    let charArray = Array(string)
    
    var i = 0
    
    while i < charArray.count {
        guard let value = symbolValues[charArray[i]] else { continue }
        
        if i + 1 < charArray.count, let nextValue = symbolValues[charArray[i + 1]], nextValue > value {
            result += nextValue - value
            i += 2
        } else {
            result += value
            i += 1
        }
    }
    
    return result
}


//Other solutions:
//func solution(_ string:String) -> Int {
//  return string
//    .replacingOccurrences(of: "CM", with: "DCD")
//    .replacingOccurrences(of: "M", with: "DD")
//    .replacingOccurrences(of: "CD", with: "CCCC")
//    .replacingOccurrences(of: "D", with: "CCCCC")
//    .replacingOccurrences(of: "XC", with: "LXL")
//    .replacingOccurrences(of: "C", with: "LL")
//    .replacingOccurrences(of: "XL", with: "XXXX")
//    .replacingOccurrences(of: "L", with: "XXXXX")
//    .replacingOccurrences(of: "IX", with: "VIV")
//    .replacingOccurrences(of: "X", with: "VV")
//    .replacingOccurrences(of: "IV", with: "IIII")
//    .replacingOccurrences(of: "V", with: "IIIII")
//    .characters.count
//}




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
        XCTAssertEqual(convert("C"), 100, "❌ Failed converting C")
        XCTAssertEqual(convert("D"), 500, "❌ Failed converting D")
        XCTAssertEqual(convert("M"), 1000, "❌ Failed converting M")
    }
    
    
    func testRandomLargeNumbers(){
        XCTAssertEqual(convert("CDXLIV"), 444, "❌ Failed converting ")
        XCTAssertEqual(convert("MCMLIV"), 1954, "❌ Failed converting ")
        XCTAssertEqual(convert("MCMXC"), 1990, "❌ Failed converting ")
        XCTAssertEqual(convert("MCMXCIX"), 1999, "❌ Failed converting ")
        XCTAssertEqual(convert("MM"), 2000, "❌ Failed converting ")
        XCTAssertEqual(convert("MMVIII"), 2008, "❌ Failed converting ")
        XCTAssertEqual(convert("MMM"), 3000, "❌ Failed converting ")
        XCTAssertEqual(convert("MMMCM"), 3900, "❌ Failed converting ")
        XCTAssertEqual(convert("MMMCMXIV"), 3914, "❌ Failed converting ")

    }
}

RomanNumeralDecoderTests.defaultTestSuite.run()

//: [Next](@next)
