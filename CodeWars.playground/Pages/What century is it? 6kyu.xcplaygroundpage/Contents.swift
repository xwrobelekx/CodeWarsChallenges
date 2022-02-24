//: [Previous](@previous)

import Foundation


/*
 Return the century of the input year. The input will always be a 4 digit string, so there is no need for validation.

 Examples

 "1999" --> "20th"
 "2011" --> "21st"
 "2154" --> "22nd"
 "2259" --> "23rd"
 "1124" --> "12th"
 "2000" --> "20th"
 
 */


//MY solution:

func whatCentury(_ year: String) -> String {
    var num = Int(year)!
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


//Other Soultions:
//func whatCentury(_ year: String) -> String {
//    return NumberFormatter.localizedString(
//      from: NSNumber(value: ceil(Double(year)!/100)),
//      number: .ordinal)
//}

//extension Int {
//  var spokenSuffix: String {
//    let ones = self % 10
//    let tens = (self / 10) % 10
//
//    guard tens != 1 else { return "th" }
//
//    switch ones {
//    case 1: return "st"
//    case 2: return "nd"
//    case 3: return "rd"
//    default: return "th"
//    }
//  }
//}
//
//func whatCentury(_ year: String) -> String {
//  guard let year = Int(year) else { return "bad input" }
//  let century = (year - 1) / 100 + 1
//  return String(century) + century.spokenSuffix
//}

//func whatCentury(_ year: String) -> String {
//    let intYear = Int(year) ?? 1
//    let intCentury = intYear % 100 == 0 ? intYear / 100 : intYear / 100 + 1
//    let formatter = NumberFormatter()
//    formatter.numberStyle = .ordinal
//
//    return formatter.string(from: intCentury as NSNumber) ?? ""
//}


//func whatCentury(_ year: String) -> String {
//  let p = (Int(year)!-1)/100+1
//  return "\(p)\(p/10==1 ? "th" : [1:"st",2:"nd",3:"rd"][p%10] ?? "th")"
//}


//func whatCentury(_ year: String) -> String {
//    
//    let century = String(Int((Double(year)! * 0.01).rounded(.up)))
//    guard century.first != "1" else { return century + "th" }
//    switch century.last {
//    case "1":
//        return century + "st"
//    case "2":
//        return century + "nd"
//    case "3":
//        return century + "rd"
//    default:
//        return century + "th"
//    }
//}




import XCTest


//"1999" --> "20th"
//"2011" --> "21st"
//"2154" --> "22nd"
//"2259" --> "23rd"
//"1124" --> "12th"
//"2000" --> "20th"

class WhatCenturyIsItTests: XCTestCase{
    
    func test20thCentury(){
        XCTAssertEqual(whatCentury("1999"), "20th", "Failed on 20th century test.")
    }

    func test21stCentury(){
        XCTAssertEqual(whatCentury("2011"), "21st", "Failed on 21st century test.")
    }

    func test23rdCentury(){
        XCTAssertEqual(whatCentury("2259"), "23rd", "Failed on 23rd century test.")
    }

    func test22ndCentury(){
        XCTAssertEqual(whatCentury("2154"), "22nd", "Failed on 22nd century test.")
    }

    func test12thCentury(){
        XCTAssertEqual(whatCentury("1124"), "12th", "Failed on 12th century test.")
    }

    func test20thCentury2(){
        XCTAssertEqual(whatCentury("2000"), "20th", "Failed on 20th century test with 2000 year.")
    }
    
}


WhatCenturyIsItTests.defaultTestSuite.run()

//: [Next](@next)
