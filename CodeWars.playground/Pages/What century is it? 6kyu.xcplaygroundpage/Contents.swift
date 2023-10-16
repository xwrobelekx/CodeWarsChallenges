//: [Previous](@previous)

import Foundation


// What century is it? - 6kyu
// Link: unknown

// Objective: Return the century of the input year. The input will always be a 4 digit string, so there is no need for validation.

/*
 Examples:
 "1999" --> "20th"
 "2011" --> "21st"
 "2154" --> "22nd"
 "2259" --> "23rd"
 "1124" --> "12th"
 "2000" --> "20th"
 */

// My approach:
// 1. Convert String year to Int.
// 2. Add 99 to the year so that the first 2 digits represent the actual century
// 3. Remove last 2 digits
// 4. Switch over the digits and add proper suffix

// MARK: - My solution:
func whatCentury(_ year: String) -> String {
    var num = Int(year)! // Not safe, but input always guaranteed to be 4 digit string.
    num += 99
    let v = num/100
    
    var output  = "\(v)"
    
    switch v {
    case 1, 21, 31, 41, 51, 61, 71, 81, 91 : output += "st"
    case 2, 22, 32, 42, 52, 62, 72, 82, 92 : output += "nd"
    case 3, 23, 33, 43, 53, 63, 73, 83, 93 : output += "rd"
    default : output += "th"
    }
    return output
}

// MARK: - Other Solutions:
func whatCentury2(_ year: String) -> String {
    return NumberFormatter.localizedString(
      from: NSNumber(value: ceil(Double(year)!/100)),
      number: .ordinal)
}

extension Int {
  var spokenSuffix: String {
    let ones = self % 10
    let tens = (self / 10) % 10

    guard tens != 1 else { return "th" }

    switch ones {
    case 1: return "st"
    case 2: return "nd"
    case 3: return "rd"
    default: return "th"
    }
  }
}

func whatCentury3(_ year: String) -> String {
  guard let year = Int(year) else { return "bad input" }
  let century = (year - 1) / 100 + 1
  return String(century) + century.spokenSuffix
}



// MARK: - Tests

import XCTest

//"1999" --> "20th"
//"2011" --> "21st"
//"2154" --> "22nd"
//"2259" --> "23rd"
//"1124" --> "12th"
//"2000" --> "20th"

class WhatCenturyIsItTests: XCTestCase {
    func test20thCentury() {
        XCTAssertEqual(whatCentury("1999"), "20th", "Failed on 20th century test.")
        XCTAssertEqual(whatCentury2("1999"), "20th", "Failed on 20th century test.")
        XCTAssertEqual(whatCentury3("1999"), "20th", "Failed on 20th century test.")
    }

    func test21stCentury() {
        XCTAssertEqual(whatCentury("2011"), "21st", "Failed on 21st century test.")
        XCTAssertEqual(whatCentury2("2011"), "21st", "Failed on 21st century test.")
        XCTAssertEqual(whatCentury3("2011"), "21st", "Failed on 21st century test.")
    }

    func test23rdCentury() {
        XCTAssertEqual(whatCentury("2259"), "23rd", "Failed on 23rd century test.")
        XCTAssertEqual(whatCentury2("2259"), "23rd", "Failed on 23rd century test.")
        XCTAssertEqual(whatCentury3("2259"), "23rd", "Failed on 23rd century test.")
    }

    func test22ndCentury() {
        XCTAssertEqual(whatCentury("2154"), "22nd", "Failed on 22nd century test.")
        XCTAssertEqual(whatCentury2("2154"), "22nd", "Failed on 22nd century test.")
        XCTAssertEqual(whatCentury3("2154"), "22nd", "Failed on 22nd century test.")
    }

    func test12thCentury() {
        XCTAssertEqual(whatCentury("1124"), "12th", "Failed on 12th century test.")
        XCTAssertEqual(whatCentury2("1124"), "12th", "Failed on 12th century test.")
        XCTAssertEqual(whatCentury3("1124"), "12th", "Failed on 12th century test.")
    }

    func test20thCentury2() {
        XCTAssertEqual(whatCentury("2000"), "20th", "Failed on 20th century test with 2000 year.")
        XCTAssertEqual(whatCentury2("2000"), "20th", "Failed on 20th century test with 2000 year.")
        XCTAssertEqual(whatCentury3("2000"), "20th", "Failed on 20th century test with 2000 year.")
    }
}

WhatCenturyIsItTests.defaultTestSuite.run()

//: [Next](@next)
