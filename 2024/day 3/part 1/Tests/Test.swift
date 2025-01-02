//
//  Test.swift
//  part 1
//
//  Created by Pipe Gutierrez on 12/29/24.
//

import Testing
import Part1

struct Test {
  @Test func testFindSingle() async throws {
    let words = "fdsmul(1,1)"
    let results = Part1.getOcurrences(hayStack: words)
    #expect(results.count == 1)
  }

  @Test func testFindMultiple() async throws {
    let words = "fdsmul(1,1)fdskljmul(1,  1),mulmul(3231,4123]cds,mul(3,4)"
    let results = Part1.getOcurrences(hayStack: words)
    #expect(results.count == 2)
  }
  
  // Tests from website
  @Test("Test cases from website", arguments: [
    ("mul(4*", 0),
    ("mul(6,9!", 0),
    ("?(12,34)", 0),
  ])
  func testFromWebsite(arg1:String, expectation:Int) async throws {
    let results = Part1.getOcurrences(hayStack: arg1)
    #expect(results.count == expectation)
  }
  
  @Test("Test multiplied string", arguments: [
    ("mul(4,5)", 20),
    ("mul(1,788)", 788),
    ("mul(500,0)", 0),
  ])
  func testGetNumbers(argument:String, expect:Int) {
    let results = Part1.getNumbers(fromString: argument)
    #expect(results == expect)
  }
  
  @Test func findWordsPart2() async throws {
    let words = "123mul(1,1)undo()123"
    let results = Part1.getOcurrences(hayStack: words)
    #expect(results.count == 2)
  }
}
