import Foundation

public class Solution528 {
    var ranges = [Int]()
    var maxRange = 0

    public init(_ w: [Int]) {
        var counter = 0
        for weight in w {
            if weight > 0 {
                counter += weight
                ranges.append(counter)
                maxRange = counter
            } else {
                ranges.append(0)
            }
        }
    }

    public func pickIndex() -> Int? {
        guard maxRange > 0 else { return nil }
        let random = Int.random(in: 0..<maxRange)
        return ranges.lastIndex(where: { random < $0 })
    }
}
