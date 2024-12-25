//
//  Test.swift
//  day2
//
//  Created by Pipe Gutierrez on 12/16/24.
//

import Testing
import Foundation

@testable import day2
let day2part1Data = [
  "7 6 4 2 1",
  "1 2 7 8 9",
  "9 7 6 2 1",
  "1 3 2 4 5",
  "8 6 4 4 1",
  "1 3 6 7 9"
]

@Test("test isValidReport part1", arguments: zip(day2part1Data, [true, false, false, false, false, true]))
func part1Test(line:String, scenarioExpectation:Bool) {
  let report = line.split(separator: " ").map {Int($0)!}
  let result = day2.isValidReport(report:report)
  #expect(result == scenarioExpectation)
}

@Test("test analyzeReports part1")
func part1Test() {
  let data =
  """
  7 6 4 2 1
  1 2 7 8 9
  9 7 6 2 1
  1 3 2 4 5
  8 6 4 4 1
  1 3 6 7 9
  """
  let results = day2.analyzeReports(data)
  #expect(results == 2)
}

@Test("test dampen a report")
func dampenerTest() {
  let report = [7, 6, 4, 2, 1]
  let results = day2.dampenReport(report: report, dampening: 0)
  #expect(results == false)
}

@Test("test report Dampener part2")
func dampenReportsTest() {
  let data =
  """
  7 6 4 2 1
  1 2 7 8 9
  9 7 6 2 1
  1 3 2 4 5
  8 6 4 4 1
  1 3 6 7 9
  """
  let results = day2.analyzeReportsDampener(data)
  #expect(results == 4)
}
