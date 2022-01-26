//: [Previous](@previous)

import Foundation
import Darwin

//Two tortoises named A and B must run a race. A starts with an average speed of 720 feet per hour. Young B knows she runs faster than A, and furthermore has not finished her cabbage.

//When she starts, at last, she can see that A has a 70 feet lead but B's speed is 850 feet per hour. How long will it take B to catch A?

//given two speeds v1 (A's speed, integer > 0) and v2 (B's speed, integer > 0) and a lead g (integer > 0) how long will it take B to catch A?

//The result will be an array [hour, min, sec] which is the time needed in hours, minutes and seconds (round down to the nearest second) or a string in some languages.

//If v1 >= v2 then return nil


//
func race(_ v1: Int, _ v2: Int, _ g: Int) -> [Int]? {

    if v1 >= v2 {return nil}
    var output : [Int] = []

    let difference = v2 - v1
    var hours = 0

    var lead  = g
    while lead >= difference {
        lead -= difference
        hours += 1
    }

    output.append(hours)

    let roughMin = 60 * Double(lead)/Double(difference)
    let min = Int(roughMin)
    output.append(min)

    print("rough sec: \(60 * (roughMin - Double(min)))")
    let roughSec = 60 * (roughMin - Double(min))
    print("rought Sec: \(roughSec)")
    let rounded = roughSec.rounded(.toNearestOrEven)
    print("rounded: \(rounded) ")

    let sec = Int(rounded)
    print("sec: \(sec)")
    output.append(sec)

    //print(output)
    return output
}


//other Solutions:
//func race(_ v1: Int, _ v2: Int, _ g: Int) -> [Int]? {
//    if (v1 >= v2) {
//        return nil
//    }
//
//    let seconds = g * 3600 / (v2-v1)
//
//    return [seconds / 3600, (seconds % 3600) / 60, seconds % 60]
//
//}


//func race(_ v1: Int,_ v2: Int,_ g: Int) -> [Int]? {
//    let h = g / (v2 - v1)
//    let m = ((g % (v2-v1)) * 60) / (v2-v1)
//    let s = (((g % (v2-v1)) * 60) % (v2-v1)) * 60 / (v2-v1)
//
//    return v2 > v1 ? [h, m, s] : nil
//}

//
//func race(_ v1: Int, _ v2: Int, _ g: Int) -> [Int]? {
//  var time = g * 3600 / (v2 - v1)
//    return  v1 >= v2 ? nil : [time / 3600, (time % 3600) / 60, time % 3600 % 60]
//}


race(720, 850, 37)



import XCTest


class SolutionTest: XCTestCase {

    func testing(_ v1: Int, _ v2: Int, _ g: Int, _ expected: [Int]?) {
        XCTAssert(race(v1, v2, g) == expected, "❌ Should return \(expected!)")
    }
    func testingNil(_ v1: Int, _ v2: Int, _ g: Int) {
        XCTAssertTrue(race(v1, v2, g) == nil, "❌ Should return nil")
    }

    func testExamples() {
        testing(720, 850, 70, [0, 32, 18])
        testing(80, 91, 37, [3, 21, 49])
        testing(80, 100, 40, [2, 0, 0])
        testingNil(820, 81, 550)
    }

    func test2(){
        //returns [0, 46, 39] so we have a rounding probelm
        XCTAssertEqual(race(611, 755, 112), [0, 46, 40], "❌ Failed on test2")
    }

    func test3(){
        XCTAssertEqual(race(702, 777, 143), [1, 54, 24], "❌ Failed on test3")
    }

    func test4(){
        XCTAssertEqual(race(720, 850, 37), [0, 17, 4], "❌ Failed on test4")
    }
    
    
}



SolutionTest.defaultTestSuite.run()







//: [Next](@next)
