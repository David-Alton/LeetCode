import Foundation

public struct Point: Hashable {
    public var row: Int
    public var col: Int

    public init(row: Int, col: Int) {
        self.row = row
        self.col = col
    }

    public static let zero = Point(row: 0, col: 0)
}

public extension Point {
    var neighbours: [Point] {
        return [
            Point(row: self.row + 1, col: self.col),
            Point(row: self.row - 1, col: self.col),
            Point(row: self.row, col: self.col + 1),
            Point(row: self.row, col: self.col - 1)
        ]
    }
}
