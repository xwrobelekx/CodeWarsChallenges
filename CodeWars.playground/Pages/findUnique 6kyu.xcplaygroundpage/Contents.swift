//: [Previous](@previous)

import Foundation


func findUniq(_ arr: [Double]) ->  Double {
    
//    var n = arr[0]
//    let set = Set(arr)
//
//    for number in set {
//        let firstIndex = arr.firstIndex(of: number)
//        let lastIndex = arr.lastIndex(of: number)
//        if firstIndex == lastIndex {
//            n = number
//        }
//    }
//
//    return n
    
    
    Set(arr).filter {
        arr.firstIndex(of: $0) == arr.lastIndex(of: $0)
    }.first!
    
}




import XCTest


class SolutionTest : XCTestCase {
    
    func testExample(){
        XCTAssertEqual(findUniq([1,1,1,2,1,1,]), 2, "❌ Failed on Ones")
        XCTAssertEqual(findUniq([3, 10, 3, 3, 3]), 10, "❌ Failed on 3's")
        XCTAssertEqual(findUniq([2, 5, 5, 5, 5]), 2, "❌ Failed on first number was unique")
        XCTAssertEqual(findUniq([3, 0.5, 3, 3, 3]), 0.5, "❌ Failed on 0.5 number")
        
    }
    
    
}


SolutionTest.defaultTestSuite.run()




//: [Next](@next)
