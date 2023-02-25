import Foundation
import SwiftUI


example(of: "Paths") {
    FileManager.documentDirectoryURL

    print(FileManager.documentDirectoryURL)
    print()
    print(FileManager.documentDirectoryURL.path)
    print()

    let remindersDataURL = URL(fileURLWithPath: "Reminders", relativeTo: FileManager.documentDirectoryURL)

    let stringURL = FileManager.documentDirectoryURL
        .appendingPathComponent("String")
        .appendingPathExtension("txt")

    // does the same thing as above
    let string2URL = FileManager.documentDirectoryURL
        .appendingPathComponent("String2.txt")

    print(remindersDataURL.path)
    print()
    print(stringURL.path)
    print()
    print(string2URL.path)
    
    
        
    let directory = NSTemporaryDirectory() as NSString
    if directory != "" {
        let path = directory.appendingPathComponent("video.mov")
        let videoURL = URL(fileURLWithPath: path)
        print()
        print(videoURL.path)
    }
    
    let tempURL = FileManager.default.temporaryDirectory
    print()
    print(tempURL.path)
    
 

    
}

example(of: "Data") {
    
    let age: UInt8 = 34
    MemoryLayout.size(ofValue: age)
    MemoryLayout<UInt8>.size
    UInt8.min
    UInt8.max
    
    let height: Int8 = 72
    MemoryLayout.size(ofValue: height)
    Int8.min
    Int8.max
    
    let weight: Float = 154.5
    MemoryLayout.size(ofValue: weight)
    MemoryLayout<Float>.size
    Float.leastNormalMagnitude
    Float.greatestFiniteMagnitude
    
    let earthRadius: Double = 3958.8
    MemoryLayout.size(ofValue: earthRadius)
    MemoryLayout<Double>.size
    Double.leastNormalMagnitude
    Double.greatestFiniteMagnitude
    
}

example(of: "Date") {
    let d = Date()
    print()
    print(d)
    
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd"
    let dateString = dateFormatter.string(from: Date())
    print()
    print(dateString)
    
    let url = FileManager.temporaryDirectoryURL
    let dateStr = Date().ymdDateString
    let deviceID = UIDevice.current.identifierForVendor?.uuidString ?? "noDeviceID"
    
    let videoURL = url
        .appendingPathComponent(dateStr)
        .appendingPathComponent(deviceID)
        .appendingPathComponent("video-\(Date().ymdDateString).mov")
    
    print()
    print(videoURL)
}

example(of: "Document with SubFolders") {
    
    let directory = FileManager.documentDirectoryURL
    let dirPath = "test1/test2/test3"
    
    //let destinationURL = directory.appendingPathComponent(dirPath, conformingTo: .utf8PlainText)
    let destinationURL = directory.appendingPathComponent(dirPath)
    
    do {
        try FileManager.default.createDirectory(at: destinationURL, withIntermediateDirectories: true)
    } catch {
        print(error.localizedDescription)
    }
    
}


example(of: "Temp with SubFolders") {
    
    
    let directory = FileManager.temporaryDirectoryURL
    let dirPath = "test1/test2/test3"
    
    //let destinationURL = directory.appendingPathComponent(dirPath, conformingTo: .utf8PlainText)
    let destinationURL = directory.appendingPathComponent(dirPath)
    
    do {
        try FileManager.default.createDirectory(at: destinationURL, withIntermediateDirectories: true)
    } catch {
        print(error.localizedDescription)
    }
    
}

