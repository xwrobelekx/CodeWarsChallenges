//: [Previous](@previous)

import Foundation

//NOT DONE
/*
 
 Linked Lists - Get Nth

 Implement a GetNth() function that takes a linked list and an integer index and returns the node stored at the Nth index position. GetNth() uses the C numbering convention that the first node is index 0, the second is index 1, ... and so on. So for the list 42 -> 13 -> 666, GetNth() with index 1 should return Node(13);

 getNth(1 -> 2 -> 3 -> null, 0).data === 1
 getNth(1 -> 2 -> 3 -> null, 1).data === 2
 The index should be in the range [0..length-1]. If it is not, GetNth() should throw/raise an exception (ArgumentException in C#, InvalidArgumentException in PHP). You should also raise an exception (ArgumentException in C#, InvalidArgumentException in PHP) if the list is empty/null/None.
 
 */


class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}



func getNth(_ head: Node?, _ index: Int) throws -> Node? {
    
    
    
    
return nil
}





/*
 
 import XCTest
 // XCTest Spec Example:
 // TODO: replace with your own tests (TDD), these are just how-to examples to get you started

 class SolutionTest: XCTestCase {
     static var allTests = [
         ("testNode", testNode),
     ]

     let list:Node? = buildOneTwoThree()
     let largeList:Node? = buildListFromArray([8, 4, 1, 2, 9, 4, 2, 8, 2])
     
     func testNode() {
         XCTAssertEqual(try! getNth(list, 0)?.data, 1)
         XCTAssertEqual(try! getNth(list, 1)?.data, 2)
         XCTAssertEqual(try! getNth(list, 2)?.data, 3)
         XCTAssertThrowsError(try getNth(list, 3))
         XCTAssertThrowsError(try getNth(list, 10))
         XCTAssertThrowsError(try getNth(list, -1))
     }
 }

 XCTMain([
     testCase(SolutionTest.allTests)
 ])
 
 
 
 
 
 */

//: [Next](@next)
