// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import Part1



guard let filePath = Bundle.module.url(forResource: "input", withExtension: ".txt") else {exit(1)}
let fileContents:String = try! String(contentsOf: filePath)

let lines = fileContents.split(whereSeparator: \.isNewline)

var counter = 0
var additionEnabled = true
for line in lines {
  let myString:String = String(line)
  
//  // Works for part1
//  let results = Part1.getOcurrences(hayStack: myString).map({(el) in
//    getNumbers(fromString: String(myString[el]))
//  }).reduce(0,+)
  
  // Solve part2
  let results = Part1.getOcurrences(hayStack: myString).reduce(0, {(accu:Int, curr:Range<String.Index>) in
    let word = String(myString[curr])
    
    if (word.hasPrefix("mul")) {
      if !additionEnabled {
        // Found mul() but addition disables
        return accu
      }
      //else
      let result = Part1.getNumbers(fromString: word)
      return accu + result
    }
    // we either enable or disable the addition
    if word.hasPrefix("do(") {
      additionEnabled = true
    } else {
      additionEnabled = false
    }
    return accu
  })
  
  counter += results
}
print(counter)


