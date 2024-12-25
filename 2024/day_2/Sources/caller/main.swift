//
//  File.swift
//  day2
//
//  Created by Pipe Gutierrez on 12/19/24.
//

import Foundation
import day2


func main() {
  guard let filePath = Bundle.module.url(forResource: "input", withExtension: "txt") else{exit(1)}
  let contents = try! String(contentsOf: filePath, encoding: .utf8)
  
  let results = day2.analyzeReportsDampener(contents)
  print(results)
}

main()
 
