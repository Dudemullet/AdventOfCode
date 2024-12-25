//import Foundation
//
//guard let filePath = Bundle.main.path(forResource: "input", ofType: "txt") else{exit(1)}
//guard let fileData = FileManager.default.contents(atPath:filePath) else {exit(1)}
//guard let contents = String(data: fileData, encoding: .utf8) else {exit(1)}
//
//var leftResults: [Int] = []
//var rightResults: [Int] = []
//var deltas: [Int] = []
//
//contents.enumerateLines { (line, _) in
//  let results = line.components(separatedBy: "   ")
//  let leftResult: Int = Int(results[0]) ?? 0
//  let rightResult: Int = Int(results[1]) ?? 0
//  
//  leftResults.append(leftResult)
//  rightResults.append(rightResult)
//}
//
//
//leftResults.sort()
//rightResults.sort()
//
//for (index, number) in leftResults.enumerated() {
//  let tempValue = abs(rightResults[index] - number)
//  deltas.append(tempValue)
//}
//
//
//let result = deltas.reduce(0, +)
//print(result)
