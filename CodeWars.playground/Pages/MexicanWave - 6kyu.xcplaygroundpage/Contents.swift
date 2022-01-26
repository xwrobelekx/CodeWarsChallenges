//: [Previous](@previous)

import Foundation

func wave(_ y: String) -> [String] {
    
    
    var mexicanWave : [String] = []
    
    for (index, char) in y.enumerated() {
        
        if char == " " {
         //emptty space
        } else {
        
        let currentIndex = y.index(y.startIndex, offsetBy: index)
        
        let afterWave = String(y[..<currentIndex])
        let waveCharacter = String(y[currentIndex].uppercased())
        let beforeWave = String(y[y.index(currentIndex, offsetBy: 1)..<y.endIndex])
        
        let wave = afterWave + waveCharacter + beforeWave
        mexicanWave.append(wave)
        }
        
    }
    print(mexicanWave)
    return mexicanWave
}


//Other Solutions:


//Converting String to array so you dont have to work with String.Indexes:
//func wave(_ y: String) -> [String] {
//  var wave = [String]()
//  for i in y.indices {
//    if !y[i].isWhitespace {
//      wave.append(y[..<i] + y[i].uppercased() + y[y.index(after: i)...])
//    }
//  }
//  return wave
//}



//Using higher Order Function:
//func wave(_ y: String) -> [String] {
//    return y.indices.compactMap {
//        guard y[$0] != " " else { return nil }
//        return y.replacingCharacters(in: $0..<y.index(after: $0), with: y[$0].uppercased())
//    }
//}

//func wave(_ y: String) -> [String] {
//  return Array(y).enumerated().compactMap { $1.isWhitespace ? nil : y.prefix($0) + $1.uppercased() + y.dropFirst($0 + 1)}
//}



import XCTest
// XCTest Spec Example:
// TODO: replace with your own tests (TDD), these are just how-to examples to get you started

class SolutionTest: XCTestCase {

    func testHello() {
        let actual = wave("hello")
        XCTAssertEqual(actual, ["Hello", "hEllo", "heLlo", "helLo", "hellO"])
    }

    func testCodewars() {
      let actual = wave("codewars")
      XCTAssertEqual(actual, ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"])

    }

    func testEmptyString() {
      let actual = wave("")
      XCTAssertEqual(actual, [])

    }

    func testTwoWords() {
      let actual = wave("two words")
      XCTAssertEqual(actual, ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"])
    }


    func testGap() {
      let actual = wave(" gap ")
      XCTAssertEqual(actual, [" Gap ", " gAp ", " gaP "])

    }
    
}

SolutionTest.defaultTestSuite.run()

//: [Next](@next)
