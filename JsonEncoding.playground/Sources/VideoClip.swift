import Foundation

public struct VideoClip: Encodable {
    public let prefix: String
    public let framerate: UInt8
    public let endTime: Double
    
    public init(prefix: String, framerate: UInt8, endTime: Double) {
        self.prefix = prefix
        self.framerate = framerate
        self.endTime = endTime
    }
}
