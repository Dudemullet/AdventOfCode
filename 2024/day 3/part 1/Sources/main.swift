// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import Part1



guard let filePath = Bundle.module.url(forResource: "input", withExtension: ".txt") else {exit(1)}
let fileContents:String = try! String(contentsOf: filePath)
