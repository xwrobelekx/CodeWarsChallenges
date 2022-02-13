//: [Previous](@previous)

import Foundation




func convert(_ roman: String) -> Int {

    let numbers : [Int] = roman.compactMap{returnInt(from:$0)}
    
    print(numbers)
    
    var result = 0
    
    var previousNumber = numbers[0] //1000 //100 //10000 //50
    
  
    var i = 1
    while i < numbers.count {
            
            let currentNumber = numbers[i] //100 //1000 // 50 //1
        
            if previousNumber < currentNumber { //1000<100 not //100 < 10000 true //1000 < 50 not //50 < 1 not
                print("\(i)🟢 prev \(previousNumber) < curr \(currentNumber)")
                //n=900
                let n = currentNumber - previousNumber
                //result = 1900
                result += n
                print("\(i)🟣 n = \(n)")
            } else {
                print("\(i)🟠 prev \(previousNumber) > curr \(currentNumber)")
                
                //result = 1000 // result = 1950 // 1951
                result += previousNumber
            }
            //100 // 1000 //50
            previousNumber = currentNumber
        
        i += 1
    }
    
    
  
  
  return result
  
}



func returnInt(from roman: Character) -> Int{
    switch roman {
    case "I" : return 1
    case "V" : return 5
    case "X" : return 10
    case "L" : return 50
    case "C" : return 100
    case "D" : return 500
    case "M" : return 1000
    default : return 0
    }
}




import XCTest

class RomanNumeralDecoderTests : XCTestCase{
    
//    func testOneThruTen() {
//        XCTAssertEqual(convert("I"), 1, "❌ Failed converting I")
//        XCTAssertEqual(convert("II"), 2, "❌ Failed converting II")
//        XCTAssertEqual(convert("III"), 3, "❌ Failed converting III")
//        XCTAssertEqual(convert("IV"), 4, "❌ Failed converting IV")
//        XCTAssertEqual(convert("V"), 5, "❌ Failed converting V")
//        XCTAssertEqual(convert("VI"), 6, "❌ Failed converting VI")
//        XCTAssertEqual(convert("VII"), 7, "❌ Failed converting VII")
//        XCTAssertEqual(convert("VIII"), 8, "❌ Failed converting VIII")
//        XCTAssertEqual(convert("IX"), 9, "❌ Failed converting IX")
//        XCTAssertEqual(convert("X"), 10, "❌ Failed converting X")
//
//
//    }
    
//    func testStandardNumbers(){
//        XCTAssertEqual(convert("I"), 1, "❌ Failed converting I")
//        XCTAssertEqual(convert("V"), 5, "❌ Failed converting V")
//        XCTAssertEqual(convert("X"), 10, "❌ Failed converting X")
//        XCTAssertEqual(convert("L"), 50, "❌ Failed converting L")
//        XCTAssertEqual(convert("C"), 10, "❌ Failed converting C")
//        XCTAssertEqual(convert("D"), 10, "❌ Failed converting D")
//        XCTAssertEqual(convert("M"), 10, "❌ Failed converting M")
//    }
    
    
    func testRandomLargeNumbers(){
//        XCTAssertEqual(convert("CDXLIV"), 444, "❌ Failed converting M")
        XCTAssertEqual(convert("MCMLIV"), 1954, "❌ Failed converting M")
//        XCTAssertEqual(convert("MCMXC"), 1990, "❌ Failed converting M")
//        XCTAssertEqual(convert("MCMXCIX"), 1999, "❌ Failed converting M")
//        XCTAssertEqual(convert("MM"), 2000, "❌ Failed converting M")
//        XCTAssertEqual(convert("MMVIII"), 2008, "❌ Failed converting M")
//        XCTAssertEqual(convert("MMM"), 3000, "❌ Failed converting M")
//        XCTAssertEqual(convert("MMMCM"), 3900, "❌ Failed converting M")
//        XCTAssertEqual(convert("MMMCMXIV"), 3914, "❌ Failed converting M")

    }
}

RomanNumeralDecoderTests.defaultTestSuite.run()

//: [Next](@next)
