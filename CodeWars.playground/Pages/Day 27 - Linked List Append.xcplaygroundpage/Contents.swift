//: [Previous](@previous)

import Foundation

/*
 Linked Lists - Append

 Write an Append() function which appends one linked list to another. The head of the resulting list should be returned.

 var listA = 1 -> 2 -> 3 -> null
 var listB = 4 -> 5 -> 6 -> null
 append(listA, listB) === 1 -> 2 -> 3 -> 4 -> 5 -> 6 -> null
 If both listA and listB are null/NULL/None/nil, return null/NULL/None/nil. If one list is null/NULL/None/nil and the other is not, simply return the non-null/NULL/None/nil list.
 */
class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }

}

extension Node: CustomStringConvertible{
    var description: String {
        if let nextNode = next {
            return "\(data) -> \(nextNode.data)"
        } else {
            return "\(data)"
        }
    }
}



func append(_ listA:Node?, _ listB:Node?) -> Node? {
    guard listA != nil && listB != nil else { return nil }
    if listB == nil {
        return listA
    } else if listA == nil {
        return listB
    }
    if let listOne = listA, let listTwo = listB {
        if listOne.next == nil {
            listOne.next = listTwo
            return listOne
        }
    }
    
    while let listOne = listA {
        
    }
//    } else {
//    return listA != nil ? listA : (listB != nil ? listB : nil)
//    }
    return listA
}

var node1 = Node(1)
var node2 = Node(2)
var node3 = Node(3)
node1.next = node2
node2.next = node3

print(node1.description)


var node4 = Node(4)
var node5 = Node(5)
var node6 = Node(6)
node4.next = node5
node5.next = node6

print(node4.description)

append(node3, node4)
print(node3.description)



/*
 import XCTest
 // XCTest Spec Example:
 // TODO: replace with your own tests (TDD), these are just how-to examples to get you started

 class SolutionTest: XCTestCase {
     static var allTests = [
         ("testAppend", testAppend),
         ("testAppendFirstListIsNil", testAppendFirstListIsNil),
         ("testAppendSecondListIsNil", testAppendSecondListIsNil),
         ("testAppendBothListsAreNil", testAppendBothListsAreNil),
     ]

     func testAppend() {
         let first:Node? = buildOneTwoThree()
         let second:Node? = buildOneTwoThree()
         var result:Node?
         result = append(first, second)
         XCTAssertTrue(linkedListsEqual(first: result, second: buildListFromArray([1, 2, 3, 1, 2, 3])))
     }
     
     func testAppendFirstListIsNil() {
         let first:Node? = nil
         let second:Node? = buildOneTwoThree()
         var result:Node?
         result = append(first, second)
         XCTAssertTrue(linkedListsEqual(first: result, second: buildListFromArray([1, 2, 3])))
     }
     
     func testAppendSecondListIsNil() {
         let first:Node? = buildOneTwoThree()
         let second:Node? = nil
         var result:Node?
         result = append(first, second)
         XCTAssertTrue(linkedListsEqual(first: result, second: buildListFromArray([1, 2, 3])))
     }
     
     func testAppendBothListsAreNil() {
         let first:Node? = nil
         let second:Node? = nil
         var result:Node?
         result = append(first, second)
         XCTAssertTrue(linkedListsEqual(first: result, second: nil))
     }
 }

 XCTMain([
     testCase(SolutionTest.allTests)
 ])
 
 */

//: [Next](@next)
