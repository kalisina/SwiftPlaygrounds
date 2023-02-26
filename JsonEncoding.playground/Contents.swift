import UIKit

var greeting = "Hello, playground"

example(of: "Json Encoding") {
    let clip1 = VideoClip(prefix: "V22H_tak1", framerate: 24, endTime: 1234)
    
    let jsonEncoder = JSONEncoder()
    jsonEncoder.outputFormatting = .prettyPrinted
    
    guard let jsonData = try? jsonEncoder.encode(clip1) else { return }
    
    let json = String(data: jsonData, encoding: String.Encoding.utf8)
    print(json)
    
    // Save to Document Directory
    let directoryURL = FileManager.documentDirectoryURL
    let fileName = "\(clip1.prefix)_\(Date().timeIntervalSince1970).json"
    let fileURL = directoryURL.appendingPathComponent(fileName)
    print(fileURL.path)
    
    do {
        try jsonData.write(to: fileURL)
    } catch {
        print(error.localizedDescription)
    }
    
    
}
