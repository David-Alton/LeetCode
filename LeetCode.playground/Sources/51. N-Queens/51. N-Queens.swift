import Foundation

//The n-queens puzzle is the problem of placing n queens on an n x n chessboard such that no two queens attack each other.
//
//Given an integer n, return all distinct solutions to the n-queens puzzle. You may return the answer in any order.
//
//Each solution contains a distinct board configuration of the n-queens' placement, where 'Q' and '.' both indicate a queen and an empty space, respectively.
//
// 
//
//Example 1:
//
//
//Input: n = 4
//Output: [[".Q..","...Q","Q...","..Q."],["..Q.","Q...","...Q",".Q.."]]
//Explanation: There exist two distinct solutions to the 4-queens puzzle as shown above
//Example 2:
//
//Input: n = 1
//Output: [["Q"]]
// 
//
//Constraints:
//
//1 <= n <= 9

public class Solution51 {
    public init() {}
    
    typealias Board = [[Square]]
    
    enum Square {
        case empty
        case queen
        case invalid
    }
    
    func formatBoard(_ board: Board) -> [String] {
        var formattedBoard = [String]()
        for row in board {
            var formattedRow = ""
            for square in row {
                switch square {
                case .empty, .invalid:
                    formattedRow.append(".")
                case .queen:
                    formattedRow.append("Q")
                }
            }
            formattedBoard.append(formattedRow)
        }
        return formattedBoard
    }
    
    func solveNQueens(_ n: Int) -> [[String]] {
        var boards = [[String]]()
        for board in solveNQueensWithSquareBoard(n) {
            boards.append(formatBoard(board))
        }
        return boards
    }
    
    func solveNQueensWithSquareBoard(_ n: Int, startingBoard: Board? = nil, queensPlaced: Int = 0) -> Set<Board> {
        var validBoards = Set<Board>()
        if queensPlaced == n, let startingBoard {
            return [startingBoard]
        }
        for row in 0..<n {
            for column in 0..<n {
                let board = startingBoard ?? blankBoard(n: n)
                if board[row][column] == .empty {
                    var placedBoard = board
                    placeQueen(row: row, column: column, in: &placedBoard)
                    let newBoards = solveNQueensWithSquareBoard(n, startingBoard: placedBoard, queensPlaced: queensPlaced + 1)
                    for newBoard in newBoards {
                        if hasPlacedAllQueens(newBoard, n: n) {
                            validBoards.insert(newBoard)
                        }
                    }
                }
            }
        }
        return validBoards
    }
    
    func hasPlacedAllQueens(_ board: Board, n: Int) -> Bool {
        var queens = 0
        for row in board {
            for column in row {
                if column == .queen {
                    queens += 1
                }
            }
        }
        return queens == n
    }
    
    private func placeQueen(row: Int, column: Int, in board: inout Board) {
        for i in 0..<board.count {
            board[i][column] = .invalid
            board[row][i] = .invalid
            if row - i >= 0, column - i >= 0 {
                board[row - i][column - i] = .invalid
            }
            if row + i < board.count, column + i < board.count {
                board[row + i][column + i] = .invalid
            }
            if row - i >= 0, column + i < board.count {
                board[row - i][column + i] = .invalid
            }
            if row + i < board.count, column - i >= 0 {
                board[row + i][column - i] = .invalid
            }
        }
        board[row][column] = .queen
    }
    
    private func blankBoard(n: Int) -> Board {
        var board = Board()
        for _ in 0..<n {
            var row = [Square]()
            for _ in 0..<n {
                row.append(.empty)
            }
            board.append(row)
        }
        return board
    }
}
