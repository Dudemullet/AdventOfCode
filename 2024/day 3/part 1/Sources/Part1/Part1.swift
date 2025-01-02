//
//  File.swift
//  part 1
//
//  Created by Pipe Gutierrez on 12/24/24.
//

import Foundation

public func getOcurrences(hayStack words: String) -> [Range<String.Index>] {
  let ranges = words.ranges(of: /mul\(\d+,\d+\)|do\(\)|don\'t\(\)/)
  return ranges
}

public func getNumbers(fromString words:String) -> Int {
  let numbersRange: Range<String.Index> = words.firstRange(of: Regex(/\d+,\d+/))!
  let results = words[numbersRange].split(separator: ",")
  
  return results.reduce(1) {(acc, curr) -> Int in
    return acc * (Int(curr) ?? 1)
  }
}
