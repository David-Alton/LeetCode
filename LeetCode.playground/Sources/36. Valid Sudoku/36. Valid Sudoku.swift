import Foundation

//Determine if a 9 x 9 Sudoku board is valid. Only the filled cells need to be validated according to the following rules:
//
//Each row must contain the digits 1-9 without repetition.
//Each column must contain the digits 1-9 without repetition.
//Each of the nine 3 x 3 sub-boxes of the grid must contain the digits 1-9 without repetition.
//Note:
//
//A Sudoku board (partially filled) could be valid but is not necessarily solvable.
//Only the filled cells need to be validated according to the mentioned rules.
//
//
//Example 1:
//
//
//Input: board =
//[["5","3",".",".","7",".",".",".","."]
//,["6",".",".","1","9","5",".",".","."]
//,[".","9","8",".",".",".",".","6","."]
//,["8",".",".",".","6",".",".",".","3"]
//,["4",".",".","8",".","3",".",".","1"]
//,["7",".",".",".","2",".",".",".","6"]
//,[".","6",".",".",".",".","2","8","."]
//,[".",".",".","4","1","9",".",".","5"]
//,[".",".",".",".","8",".",".","7","9"]]
//Output: true
//Example 2:
//
//Input: board =
//[["8","3",".",".","7",".",".",".","."]
//,["6",".",".","1","9","5",".",".","."]
//,[".","9","8",".",".",".",".","6","."]
//,["8",".",".",".","6",".",".",".","3"]
//,["4",".",".","8",".","3",".",".","1"]
//,["7",".",".",".","2",".",".",".","6"]
//,[".","6",".",".",".",".","2","8","."]
//,[".",".",".","4","1","9",".",".","5"]
//,[".",".",".",".","8",".",".","7","9"]]
//Output: false
//Explanation: Same as Example 1, except with the 5 in the top left corner being modified to 8. Since there are two 8's in the top left 3x3 sub-box, it is invalid.
//
//
//Constraints:
//
//board.length == 9
//board[i].length == 9
//board[i][j] is a digit 1-9 or '.'.

public class Solution36 {
    public init() {}

    var rows = [Int: [Character: Bool]]()
    var columns = [Int: [Character: Bool]]()
    var boxes = [Int: [Character: Bool]]()

    public func isValidSudoku(_ board: [[Character]]) -> Bool {
        for row in 0..<board.count {
            for column in 0..<board[row].count {
                let point = Point(row: row, col: column)
                if !validPlacement(ofPoint: point, onBoard: board) {
                    return false
                }
            }
        }
        return true
    }

    func validPlacement(ofPoint point: Point, onBoard board: [[Character]]) -> Bool {
        let value = board[point.row][point.column]
        guard value != "." else { return true }
        guard validPlacement(ofValue: value, inRow: point.row) else { return false }
        guard validPlacement(ofValue: value, inColumn: point.col) else { return false }
        let box = box(forPoint: point)
        guard validPlacement(ofValue: value, inBox: box) else { return false }
        return true
    }

    func validPlacement(ofValue value: Character, inRow row: Int) -> Bool {
        guard rows[row]?[value] != true else { return false }
        if rows[row] == nil {
            rows[row] = [Character: Bool]()
        }
        rows[row]?[value] = true
    }

    func validPlacement(ofValue value: Character, inColumn column: Int) -> Bool {
        guard columns[column]?[value] != true else { return false }
        if columns[column] == nil {
            columns[column] = [Character: Bool]()
        }
        columns[column]?[value] = true
    }

    func validPlacement(ofValue value: Character, inBox box: Int) -> Bool {
        guard boxes[box]?[value] != true else { return false }
        if boxes[box] == nil {
            boxes[box] = [Character: Bool]()
        }
        boxes[box]?[value] = true
    }

    func box(forPoint point: Point) -> Int {
        let boxColumn = (point.col/3) * 10
        let boxRow = point.row/3
        return boxColumn + boxRow
    }
}
