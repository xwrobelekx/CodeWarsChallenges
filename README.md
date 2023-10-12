# CodeWars Code Challenges

This page represents my daily code challanges which focuse on:

  - Swift programming language.
  - Dart programming language (occasionally).

### My current rank:
![rank](https://www.codewars.com/users/xwrobelekx/badges/large)

---

### Organization:

  - There is one main playground which holds many sub folders.
  - Each supfolder represents a new challenge.
  - Originally they were numbered by days, then by dates, and now I just organize them by its title and difuculty raiting for clearer context.
  - Each file has a title and kata rating (kyu) (8 being easiet, 1 being the hardest).
  

 #### Each page contains:
  - Brief description of a problem.
  - My solution to a challenge.
  - Some other clever solutions made by other users.
  - XCTests.

---

# Playground page structure:

#### Section1: Title with link to the challenge, example, and my approach.

```
// Gravity flip - 8kyu
// Link: https://www.codewars.com/kata/5f70c883e10f9e0001c89673

// Objective: Given direction of ether Left (L) or Right (R) sort the array (a) in corresponding order.

// Example:
/*
 * 'R', [3, 2, 1, 2]      ->  [1, 2, 2, 3]
 * 'L', [1, 4, 5, 3, 5 ]  ->  [5, 5, 4, 3, 1]
*/

// My approach:
// 1. Switch on the direction
// 2. Base on the direction, use sorted(by:) function to sort element
// 3. Return those sorted elements or empty array if something goes wrong.
```
#### Section2: My solution.

```
// MARK: - My Solution

func flip(_ direction: String, _ a: [Int]) -> [Int] {
  switch direction {
    case "L":
    return a.sorted(by: >)
    case "R" :
    return a.sorted()
    
  default:
      return []
  }
}
```

#### Section3: Other Celever solutions.

```
// MARK: - Other Solutions:

 func flip2(_ direction: String, _ a: [Int]) -> [Int] {
    return a.sorted(by: direction == "L" ? (>) : (<))
 }
 
 func flip3(_ direction: String, _ a: [Int]) -> [Int] {
     return direction == "R" ? a.sorted() : a.sorted().reversed()
 }
```

#### Section4: Tests.

```
// MARK: - Tests

import XCTest

class GravityFlipTests: XCTestCase {
    
    func testRightFlip() {
        XCTAssertEqual(flip("R", [3, 2, 1, 2]), [1, 2, 2, 3])
        XCTAssertEqual(flip2("R", [3, 2, 1, 2]), [1, 2, 2, 3])
        XCTAssertEqual(flip3("R", [3, 2, 1, 2]), [1, 2, 2, 3])
    }
    
    func testLeftFlip() {
        XCTAssertEqual(flip("L", [1, 4, 5, 3, 5]), [5, 5, 4, 3, 1])
        XCTAssertEqual(flip2("L", [1, 4, 5, 3, 5]), [5, 5, 4, 3, 1])
        XCTAssertEqual(flip3("L", [1, 4, 5, 3, 5]), [5, 5, 4, 3, 1])
    }
    
    func testInvalid() {
        XCTAssertEqual(flip("X", []), [])
        XCTAssertEqual(flip2("X", []), [])
        XCTAssertEqual(flip3("X", []), [])
    }
    
}

GravityFlipTests.defaultTestSuite.run()
```
  
#### Checkout [Code Wars](http://codewars.com) for yourself.


