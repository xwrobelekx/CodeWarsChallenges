//: [Previous](@previous)

import Foundation
import XCTest

/*
 Fizz buzz Cuckoo Clock 7kyu
 
 Your plan

 When a minute is evenly divisible by three, the clock will say the word "Fizz".
 When a minute is evenly divisible by five, the clock will say the word "Buzz".
 When a minute is evenly divisible by both, the clock will say "Fizz Buzz", with two exceptions:
 On the hour, instead of "Fizz Buzz", the clock door will open, and the cuckoo bird will come out and "Cuckoo" between one and twelve times depending on the hour.
 On the half hour, instead of "Fizz Buzz", the clock door will open, and the cuckoo will come out and "Cuckoo" just once.
 With minutes that are not evenly divisible by either three or five, at first you had intended to have the clock just say the numbers ala Fizz Buzz, but then you decided at least for version 1.0 to just have the clock make a quiet, subtle "tick" sound for a little more clock nature and a little less noise.
 Your input will be a string containing hour and minute values in 24-hour time, separated by a colon, and with leading zeros. For example, 1:34 pm would be "13:34".

 Your return value will be a string containing the combination of Fizz, Buzz, Cuckoo, and/or tick sounds that the clock needs to make at that time, separated by spaces. Note that although the input is in 24-hour time, cuckoo clocks' cuckoos are in 12-hour time.

 Some examples

 "13:34"       "tick"
 "21:00"       "Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo"
 "11:15"       "Fizz Buzz"
 "03:03"       "Fizz"
 "14:30"       "Cuckoo"
 "08:55"       "Buzz"
 "00:00"       "Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo"
 "12:00"       "Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo
 
 
 */

func fizzBuzzCuckooClock(_ time: String) -> String {
    //first extract hour and min from string
    
    var hour = Int(String(time.prefix(2)))!
    let minute = Int(String(time.suffix(2)))!
    var result = "tick"
    
    if minute == 00 {
        result = ""
        if hour > 12 {
            hour = hour - 12
        } else if hour == 0 { hour = 12 }
        for _ in 0..<hour {
            result += "Cuckoo "
        }
    } else {
        if (minute % 3 == 0) && (minute % 5 == 0) {
            if minute == 30 { return "Cuckoo" }
            return "Fizz Buzz" }
        else if  minute % 3 == 0 { return "Fizz" }
        else if minute % 5 == 0 { return "Buzz" }
    }
    return result == "tick" ? result : String(result.dropLast())
}



 
    
    
    //if the minute is 00 -> look at the hour and return "Cuckoo" x times
    
//other wise look at the minute and return fizz buzz
    
    
    
    
  // Do something



fizzBuzzCuckooClock("14:30")


/*
 //other solutions:
 func fizzBuzzCuckooClock(_ time: String) -> String {
     
     var t = time.split(separator: ":").map{Int($0)!}
     let (h, m) = ((t[0]+11)%12+1, t[1])
     
     return m == 0 ? Array(repeating: "Cuckoo", count: h).joined(separator: " ")
          : m == 30 ? "Cuckoo"
          : m % 3 == 0 && m % 5 == 0 ? "Fizz Buzz"
          : m % 3 == 0 ? "Fizz"
          : m % 5 == 0 ? "Buzz"
          : "tick"
 }
 
 
 
 func fizzBuzzCuckooClock(_ time: String) -> String {
     let a = time.components(separatedBy: ":")
     guard let hrs = Int(a[0]), let min = Int(a[1]) else { return "tick" }
     switch min
     {
         case 0:
             return Array(repeating: "Cuckoo", count: (hrs+11)%12+1 ).joined(separator: " ")
         case 30:
             return "Cuckoo"
         case let x where x % 15 == 0:
             return "Fizz Buzz"
         case let x where x % 3 == 0:
             return "Fizz"
         case let x where x % 5 == 0:
             return "Buzz"
         default:
             return "tick"
     }
 }
 
 */


//import XCTest
//
//class ExampleTest: XCTestCase {
//    static let basicTests = [
//        ("13:34", "tick"),
//        ("21:00", "Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo"),
//        ("11:15", "Fizz Buzz"),
//        ("03:03", "Fizz"),
//        ("14:30", "Cuckoo"),
//        ("08:55", "Buzz"),
//        ("00:00", "Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo"),
//        ("12:00", "Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo")
//    ]
//    static var allTests = [
//        ("Basic Tests", runBasicTests),
//    ]
//
//    func runBasicTests() {
//        for test in ExampleTest.basicTests {
//            XCTAssertEqual(fizzBuzzCuckooClock(test.0), test.1, "Testing with time \(test.0)")
//        }
//    }
//}

//XCTMain([
//    testCase(ExampleTest.allTests)
//])





//: [Next](@next)
