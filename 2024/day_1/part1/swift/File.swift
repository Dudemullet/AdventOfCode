import Foundation

let fileData = FileManager.default.contents(atPath:"../input.txt")

if let fileData {
    let contents = String(data: fileData, encoding: .utf8)
        if let contents {
            contents.enumerateLines { (line, _) in
                print(line)
            }
        }
}
