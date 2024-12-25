import Foundation


func isDecreasing(_ num1:Int,_ num2:Int) -> Bool {
  if num2 < num1 {
    return true
  }
  return false
}

func isIncreasing(_ num1:Int,_ num2:Int) -> Bool {
  if num2 > num1 {
    return true
  }
  return false
}

func inRange(_ num1:Int, _ num2 :Int) -> Bool {
  let num = abs(num1 - num2)
  return (1...3).contains(num)
}

func isValidReport(report:[Int]) -> Bool {
  let adjacentPairs = zip(report, report.dropFirst()).map {($0,$1)}
  
  let allInRange = adjacentPairs.allSatisfy {inRange($0,$1)}
  let allIncreasing = adjacentPairs.allSatisfy {isIncreasing($0,$1)}
  let allDecreasing = adjacentPairs.allSatisfy {isDecreasing($0,$1)}
  
  guard allInRange else {return false}
  guard allDecreasing || allIncreasing else {return false}
  return true
}

public func analyzeReports(_ input:String) -> Int {
  let lines = input.split(whereSeparator: \.isNewline)
  
  
  return lines.reduce(0) { (prev,current) -> Int in
    let report :[Int] = current.split(separator: " ").map{Int($0)!}
    if isValidReport(report: report) {
      return prev + 1
    }
    return prev
  }
}

func dampenReport(report items:[Int], dampening index:Int) -> Bool {
  let reachedEndOfArray = (items.count == index)
  
  // Recurring exit condition
  if reachedEndOfArray {
    return false
  }
  
  // Create dampened report
  var dampenedReport:[Int] = items
  dampenedReport.remove(at: index)
  
  if isValidReport(report: dampenedReport) {
    return true
  }
  
  return dampenReport(report: items, dampening:index+1)
}

func dampenReport(report items:[Int]) -> Bool {
  return isValidReport(report: items) || dampenReport(report: items, dampening: 0)
}

public func analyzeReportsDampener(_ input:String) -> Int {
  let lines = input.split(whereSeparator: \.isNewline)
  
  
  return lines.reduce(0) { (prev,current) -> Int in
    let report :[Int] = current.split(separator: " ").map{Int($0)!}
    if dampenReport(report: report) {
      return prev + 1
    }
    return prev
  }
}
