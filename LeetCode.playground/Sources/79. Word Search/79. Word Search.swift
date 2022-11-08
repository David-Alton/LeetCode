import Foundation

//79. Word Search
//Medium
//11.5K
//453
//Companies
//Given an m x n grid of characters board and a string word, return true if word exists in the grid.
//
//The word can be constructed from letters of sequentially adjacent cells, where adjacent cells are horizontally or vertically neighboring. The same letter cell may not be used more than once.
//
//
//
//Example 1:
//
//
//Input: board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], word = "ABCCED"
//Output: true
//Example 2:
//
//
//Input: board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], word = "SEE"
//Output: true
//Example 3:
//
//
//Input: board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], word = "ABCB"
//Output: false
//
//
//Constraints:
//
//m == board.length
//n = board[i].length
//1 <= m, n <= 6
//1 <= word.length <= 15
//board and word consists of only lowercase and uppercase English letters.
//
//
//Follow up: Could you use search pruning to make your solution faster with a larger board?

public class Solution79 {
    public init() {}
    
    public func exist(_ board: [[Character]], _ word: String) -> Bool {
        for row in 0..<board.count {
            for col in 0..<board[row].count {
                let point = Point(row: row, col: col)
                if findWord(board: board, word: word, fromPoint: point) {
                    return true
                }
            }
        }
        return false
    }

    func findWord(board: [[Character]], word: String, fromPoint point: Point, usedPoints: [Point: Bool] = [Point: Bool]()) -> Bool {
        guard usedPoints[point] != true else { return false }
        guard board.indices.contains(point.row), board.first?.indices.contains(point.col) == true else { return false }
        let characterAtPoint = board[point.row][point.col]
        var remainingWord = word
        let characterNeeded = remainingWord.removeFirst()
        guard characterAtPoint == characterNeeded else { return false }
        var usedPoints = usedPoints
        usedPoints[point] = true
        guard !remainingWord.isEmpty else { return true }
        for neighbour in point.neighbours {
            if findWord(board: board, word: remainingWord, fromPoint: neighbour, usedPoints: usedPoints) {
                return true
            }
        }
        return false
    }
}
