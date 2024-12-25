import Foundation

let validRange = 1...3

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

guard let filePath = Bundle.main.path(forResource: "input_day2", ofType: "txt") else{exit(1)}
guard let fileData = FileManager.default.contents(atPath:filePath) else {exit(1)}
guard let contents = String(data: fileData, encoding: .utf8) else {exit(1)}

contents.enumerateLines{ (line,_) in
  let currentLine :[Int] = line.split(separator: " ").map{Int($0)!}
  
  let element1 = currentLine[0]
  let element2 = currentLine[1]
  
  // check the fn
  
  if isDecreasing(element1, element2) {
    
    for (i, curr) in currentLine.enumerated() {
      if i == 0{
        break
      }
          
    }
  } else if isIncreasing(element1,element2){
    var checkFn = isIncreasing
  }
}
