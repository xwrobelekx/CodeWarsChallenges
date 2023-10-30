//: [Previous](@previous)

import Foundation

// MARK: - Objective
// Remove vowels from string.
// "y" is not not considered a vowel for this challenge

// MARK: My approach
// 1. Define what a vowel is
// 2. Iterate thru the String, and remove all characters that are in the vowels definition
// 3. Return the final result


// MARK: - My Solution
func disemvowel(_ s: String) -> String {
    let vowels: Set<Character> = ["a", "e", "o", "u", "i", "A", "E", "O", "I", "U"]
    var string: String = s
    string.removeAll{ vowels.contains($0) }
    return string
}

// MARK: - Other Solutions

func disemvowel2(_ s: String) -> String {
  return s.replacingOccurrences(of: "[aeiou]", with: "", options: [.regularExpression, .caseInsensitive])
}

func disemvowel3(_ s: String) -> String {
   return s.replacingOccurrences(of: "[AEIOUaeiou]", with: "", options: .regularExpression)
}

// MARK: - Tests

import XCTest

class DisemvowelTests: XCTestCase {
    func testExample() {
        let input = "This website is for losers LOL!"
        let output = "Ths wbst s fr lsrs LL!"
        
        XCTAssertEqual(disemvowel(input), output)
        XCTAssertEqual(disemvowel2(input), output)
        XCTAssertEqual(disemvowel3(input), output)
    }
    
    func testExample2() {
        let input = "No offense but,\nYour writing is among the worst I've ever read"
        let output = "N ffns bt,\nYr wrtng s mng th wrst 'v vr rd"
        
        XCTAssertEqual(disemvowel(input), output)
        XCTAssertEqual(disemvowel2(input), output)
        XCTAssertEqual(disemvowel3(input), output)
    }
    
    func testExample3() {
        let input = "What are you, a player?"
        let output = "Wht r y,  plyr?"
        
        XCTAssertEqual(disemvowel(input), output)
        XCTAssertEqual(disemvowel2(input), output)
        XCTAssertEqual(disemvowel3(input), output)
    }
    
}

DisemvowelTests.defaultTestSuite.run()

//: [Next](@next)
