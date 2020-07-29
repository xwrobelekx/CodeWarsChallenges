//: [Previous](@previous)

import Foundation

/*
 How much? 6kyu
 
 I always thought that my old friend John was rather richer than he looked, but I never knew exactly how much money he actually had. One day (as I was plying him with questions) he said:

 "Imagine I have between m and n Zloty..." (or did he say Quetzal? I can't remember!)
 "If I were to buy 9 cars costing c each, I'd only have 1 Zloty (or was it Meticals?) left."
 "And if I were to buy 7 boats at b each, I'd only have 2 Ringglets (or was it Zloty?) left."
 Could you tell me in each possible case:

 how much money f he could possibly have ?
 the cost c of a car?
 the cost b of a boat?
 So, I will have a better idea about his fortune. Note that if m-n is big enough, you might have a lot of possible answers.

 Each answer should be given as ["M: f", "B: b", "C: c"] and all the answers as [ ["M: f", "B: b", "C: c"], ... ]. "M" stands for money, "B" for boats, "C" for cars.

 Note: m, n, f, b, c are positive integers, where 0 <= m <= n or m >= n >= 0. m and n are inclusive.

 Examples:

 howmuch(1, 100)      => [["M: 37", "B: 5", "C: 4"], ["M: 100", "B: 14", "C: 11"]]
 howmuch(1000, 1100)  => [["M: 1045", "B: 149", "C: 116"]]
 howmuch(10000, 9950) => [["M: 9991", "B: 1427", "C: 1110"]]
 howmuch(0, 200)      => [["M: 37", "B: 5", "C: 4"], ["M: 100", "B: 14", "C: 11"], ["M: 163", "B: 23", "C: 18"]]
 Explanation of the results for howmuch(1, 100):

 In the first answer his possible fortune is 37:
 so he can buy 7 boats each worth 5: 37 - 7 * 5 = 2
 or he can buy 9 cars worth 4 each: 37 - 9 * 4 = 1
 The second possible answer is 100:
 he can buy 7 boats each worth 14: 100 - 7 * 14 = 2
 or he can buy 9 cars worth 11: 100 - 9 * 11 = 1
 Note

 See "Sample Tests" to know the format of the return.


 */

func howMuch(_ m: Int, _ n: Int) -> [(String, String, String)] {
    // your code
    guard n >= m else { return [("", "", "")]}
    
    
    //so we got between m and n money ex ($20...$100)
    
    for number in m...n {
        
        
        // we dont know what the mod number might be, one solution is to run every number up until m
       
        for mod in 2..<n {
            if number % mod == 1 {
                print(number)
            }
        }
        //print(number)
    }
    
    
  //divide that number by something that will give u reminder 1 this will give u number of cars, but there might be a number of possible answers
  // same thing for boats
  
  // then need to format the answer
  return [("", "", "")]
}

howMuch(20, 100)


/*
 //Other solutions:
 
 
 
 
 
 
 
 //Tests:
 import XCTest

 class SolutionTest: XCTestCase {
     static var allTests = [
         ("howMuch", testExample),
     ]

     func testing(_ m: Int, _ n: Int, _ expected: [(String, String, String)]) {
         let ans  = howMuch(m, n)
         if ans.count == expected.count {
             for i in 0..<expected.count {
                 XCTAssertTrue(howMuch(m, n)[i] == expected[i], "Actual and Expected don't have same value at index \(i) -> expected \(expected[i])")
             }
         }
         else {XCTAssertEqual(ans.count, expected.count, "Actual and Expected don't have same length")}
     }

     func testExample() {
         testing(1, 100, [("M: 37", "B: 5", "C: 4"), ("M: 100", "B: 14", "C: 11")])
         testing(0, 200, [("M: 37", "B: 5", "C: 4"), ("M: 100", "B: 14", "C: 11"), ("M: 163", "B: 23", "C: 18")])
         testing(1500, 1600, [("M: 1549", "B: 221", "C: 172")])
         testing(2950, 2950, [])
         testing(20000, 20100, [("M: 20008", "B: 2858", "C: 2223"), ("M: 20071", "B: 2867", "C: 2230")])
     }
 }

 XCTMain([
     testCase(SolutionTest.allTests)
 ])
 
 
 
 
 
 
 
 
 */

//: [Next](@next)
