//: [Previous](@previous)

import Foundation
/*

Let us begin with an example:

A man has a rather old car being worth $2000. He saw a secondhand car being worth $8000. He wants to keep his old car until he can buy the secondhand one.

He thinks he can save $1000 each month but the prices of his old car and of the new one decrease of 1.5 percent per month. Furthermore this percent of loss increases of 0.5 percent at the end of every two months. Our man finds it difficult to make all these calculations.

Can you help him?

How many months will it take him to save up enough money to buy the car he wants, and how much money will he have left over?

Parameters and return of function:

parameter (positive int or float, guaranteed) startPriceOld (Old car price)
parameter (positive int or float, guaranteed) startPriceNew (New car price)
parameter (positive int or float, guaranteed) savingperMonth
parameter (positive float or int, guaranteed) percentLossByMonth

nbMonths(2000, 8000, 1000, 1.5) should return [6, 766] or (6, 766)
Detail of the above example:

end month 1: percentLoss 1.5 available -4910.0
end month 2: percentLoss 2.0 available -3791.7999...
end month 3: percentLoss 2.0 available -2675.964
end month 4: percentLoss 2.5 available -1534.06489...
end month 5: percentLoss 2.5 available -395.71327...
end month 6: percentLoss 3.0 available 766.158120825...
return [6, 766] or (6, 766)
where 6 is the number of months at the end of which he can buy the new car and 766 is the nearest integer to 766.158... (rounding 766.158 gives 766).

Note:

Selling, buying and saving are normally done at end of month. Calculations are processed at the end of each considered month but if, by chance from the start, the value of the old car is bigger than the value of the new one or equal there is no saving to be made, no need to wait so he can at the beginning of the month buy the new car:

nbMonths(12000, 8000, 1000, 1.5) should return [0, 4000]
nbMonths(8000, 8000, 1000, 1.5) should return [0, 0]
We don't take care of a deposit of savings in a bank:-)
 */
func nbMonths(_ startPriceOld: Int, _ startPriceNew: Int, _ savingPerMonth: Int, _ percentLossByMonth: Double) -> (Int, Int) {
    guard startPriceOld < startPriceNew else  { return (0, (startPriceOld - startPriceNew))}
    
    var oldPrice = Double(startPriceOld)
    var newPrice = Double(startPriceNew)
    var cash : Double = 0
    var percent = percentLossByMonth
    var month = 0
    
    while (oldPrice + cash) < newPrice {
        cash += Double(savingPerMonth)
        
        if month % 2 != 0 &&  month != 0 {
            percent += 0.5
        }
        
        oldPrice = oldPrice - (oldPrice * (percent / 100.0))
        newPrice = newPrice - (newPrice * (percent / 100.0))
        month += 1
    }
    
    //save 1000 a month
    //price of the old car and new car drops by 1.5% each month
    // price drop increases by 0.5% every 2 months
    // were gone have to have a while loop where the condition will be a nagative difference between old car value and new car value and some savings
    let result = Int((oldPrice + cash - newPrice).rounded())
    return (month, result)
}
nbMonths(2000, 8000, 1000, 1.5) //(6, 766))
nbMonths(12000, 8000, 1000, 1.5) // (0, 4000))
nbMonths(8000, 12000, 500, 1.0) // (8, 597))
nbMonths(18000, 32000, 1500, 1.25) // (8, 332))
nbMonths(7500, 32000, 300, 1.55) //(25, 122))
nbMonths(1000, 500, 300, 1.55) //(0, 500))

/*
 
 //other soultions:
 func nbMonths(_ startPriceOld: Int, _ startPriceNew: Int, _ savingPerMonth: Int, _ percentLossByMonth: Double) -> (Int, Int) {
     var old = Double(startPriceOld)
     var new = Double(startPriceNew)
     var percent = 1.0 - (percentLossByMonth / 100.0)
     var savings = 0.0
     var month = 0
     
     while (old+savings) < new {
         old *= percent
         new *= percent
         savings += Double(savingPerMonth)
         percent -= (month%2==0 ? 0.005 : 0)
         month += 1
     }
     
     return (month,Int((savings+old-new).rounded()))
 }
 
 
 //Tests:
 
 import XCTest
 import Glibc // for random()

 // XCTest Spec Example:
 // TODO: replace with your own tests (TDD), these are just how-to examples to get you started

 class SolutionTest: XCTestCase {
     static var allTests = [
         ("nbMonths", testExample),
     ]

     func testing(_ startPriceOld: Int, _ startPriceNew: Int, _ savingPerMonth: Int, _ percentLossByMonth: Double, _ expected: (Int, Int)) {
         let act: (Int, Int) = nbMonths(startPriceOld, startPriceNew, savingPerMonth, percentLossByMonth)
         XCTAssertEqual(act.0, expected.0)
         XCTAssertEqual(act.1, expected.1)
     }

     func testExample() {
         testing(2000, 8000, 1000, 1.5, (6, 766))
         testing(12000, 8000, 1000, 1.5 , (0, 4000))
         testing(8000, 12000, 500, 1.0, (8, 597))
         testing(18000, 32000, 1500, 1.25, (8, 332))
         testing(7500, 32000, 300, 1.55, (25, 122))
     }
 }

 XCTMain([
     testCase(SolutionTest.allTests)
 ])
 
 
 
 */

//: [Next](@next)
