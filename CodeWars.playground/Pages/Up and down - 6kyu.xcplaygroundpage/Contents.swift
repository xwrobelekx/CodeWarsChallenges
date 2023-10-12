//: [Previous](@previous)

import Foundation

// Up AND Down 8kyu
// Link: unknown

// Objective: Given a String, return a String with every other word uppercased.
// Example: Given: Hello World. How are you? Return: hello, WORLD. how ARE you?

// My approach:
// 1. Turn it the String into array of words.
// 2. Go thru the array and if the index is odd - uppercase the word.
// 3. Then return the whole array joined(separator: " "")

func arrange(_ s: String) -> String {
    var array = s.components(separatedBy: " ")
    
    for (index, word) in array.enumerated() {
        if (index % 2) == 1 {
            array[index] = word.uppercased()
        } else {
            array[index] = word.lowercased()
        }
    }
    
    return array.joined(separator: " ")
}


// MARK: - Tests:

import XCTest

class UpAndDownTests : XCTestCase {
    func testExample() {
        XCTAssertEqual(arrange("Hello World. How are you?"), "hello WORLD. how ARE you?")
    }
    
    func testExample2() {
        XCTAssertEqual(arrange("who hit retaining The That a we taken"), "who HIT retaining THE that A we TAKEN")
    }
    
    func testEmptyString() {
        XCTAssertEqual(arrange(""), "")
    }
    
    func testOneWord() {
        XCTAssertEqual(arrange("One"), "one")
    }
}


UpAndDownTests.defaultTestSuite.run()

//: [Next](@next)
