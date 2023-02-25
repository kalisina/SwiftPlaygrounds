import Foundation

public extension FileManager {
    
    static var documentDirectoryURL: URL {
        `default`.urls(for: .documentDirectory, in: .userDomainMask)[0]
    }
    
    static var temporaryDirectoryURL: URL {
        URL(fileURLWithPath: NSTemporaryDirectory(), isDirectory: true)
    }
}
