//: [Previous](@previous)

import Foundation

/*
 
 ---- Didnt finished it, but i was very close - was failing 5 tests -------
 
 
 All we eat is water and dry matter.

 John bought potatoes: their weight is 100 kilograms. Potatoes contain water and dry matter.

 The water content is 99 percent of the total weight. He thinks they are too wet and puts them in an oven - at low temperature - for them to lose some water.

 At the output the water content is only 98%.

 What is the total weight in kilograms (water content plus dry matter) coming out of the oven?

 He finds 50 kilograms and he thinks he made a mistake: "So much weight lost for such a small change in water content!"

 Can you help him?

 Write function potatoes with

 int parameter p0 - initial percent of water-
 int parameter w0 - initial weight -
 int parameter p1 - final percent of water -
 potatoesshould return the final weight coming out of the oven w1 truncated as an int.

 Example:

 potatoes(99, 100, 98) --> 50
 
 */

/*
 Potatoes weight 100kg
 Potatoes contain water and dry matter
 Water content is 99%
 dry matter content is 1%
 
 1% out of 100kg = 1kg
 water is 99 kg
 
 after drying
 water is 98%
 but potatos weight 50kg
 
 before - 99% water
 100kg of potatoes where 1kg dry matter and 99kg of water
 
 after 98% water
 50kg of potatos where 1kg is dry matter and 49kg is water
 
 
 

 
 
 
 */

//let x =

let e = 100 * 0.99 + 1
let r =  0.98 + 1


//first solution
func potatoes (_ p0: Int, _ w0: Int, _ p1: Int) -> Int {
    let water = Double(w0) * Double(p0) / 100
    let dryMatter = Double(w0) - water
    let dryMatterPercentageAfterDrying = 100 - p1
    let finalWeight = (Double(dryMatter) * 100) / Double(dryMatterPercentageAfterDrying)
    return Int(finalWeight.rounded())

    
}

//try using only ints
func potatoes4 (_ p0: Int, _ w0: Int, _ p1: Int) -> Int {
    let water = w0 * p0 / 100
    let dryMatter = w0 - water
    let dryMatterPercentageAfterDrying = 100 - p1
    let finalWeight = (dryMatter * 100) / dryMatterPercentageAfterDrying
    return finalWeight

    
}

//with rounded im failing 30 tests, without it im failing only 5
func potatoes5 (_ p0: Int, _ w0: Int, _ p1: Int) -> Int {
    let water = Float(w0) * Float(p0) / 100
    let dryMatter = Float(w0) - water
    let dryMatterPercentageAfterDrying = 100 - p1
    let finalWeight = (Float(dryMatter) * 100) / Float(dryMatterPercentageAfterDrying)
    return Int(finalWeight)

    
}

//func potatoes6 (_ p0: Int, _ w0: Int, _ p1: Int) -> Int {
//    let water = Float(w0) * Float(p0) / 100
//    let dryMatter = Float(w0) - water
//    let dryMatterPercentageAfterDrying = 100 - p1
//    var finalWeight = ((Float(dryMatter) * 100) / Float(dryMatterPercentageAfterDrying)).round()
//
//    return Int(finalWeight)
//}



//some refactoring:
func potatoes2 (_ p0: Int, _ w0: Int, _ p1: Int) -> Int {
    let dryMatter = Double(w0) - Double(w0) * Double(p0)/100
    return Int((((dryMatter * 100) / Double((100 - p1)))).rounded())
}







//now im thinking that this math could of been shorter
//func potatoes3 (_ p0: Int, _ w0: Int, _ p1: Int) -> Int {
//    return (((Double(w0) - Double(w0) * Double(p0)/100) * 100) / Double((100 - p1))).rounded(.up)
//}

potatoes6(82, 127, 80)
//potatoes4(99, 100, 98)




// Other solutions
func potatoes7 (_ p0: Int, _ w0: Int, _ p1: Int) -> Int {
    return w0 * (100 - p0) / (100 - p1)
}









/*
 
 import XCTest
 import Glibc // for random()

 class SolutionTest: XCTestCase {
     static var allTests = [
         ("potatoes", testExample),
     ]

     func dotest(_ p0: Int, _ w0: Int, _ p1: Int, _ exp: Int) {
         let ans = potatoes(p0, w0, p1)
         XCTAssertEqual(ans, exp)
     }

     func testExample() {
         dotest(99, 100, 98, 50)
         dotest(82, 127, 80, 114)
     }
     
 }

 XCTMain([
     testCase(SolutionTest.allTests)
 ])
 
 */






//: [Next](@next)

