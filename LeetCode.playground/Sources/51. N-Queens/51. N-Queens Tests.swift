import Foundation

public class Solution51Tests {
    public init() {
        testExample1()
        testExample2()
        testExample3()
    }

    func testExample1() {
        let solution = Solution51().solveNQueens(4)
        assert(solution.sorted(by: { $0.description < $1.description }) == [[".Q..","...Q","Q...","..Q."],["..Q.","Q...","...Q",".Q.."]].sorted(by: { $0.description < $1.description }), "Expected [['.Q..','...Q','Q...','..Q.'],['..Q.','Q...','...Q','.Q..']], got \(solution)")
    }
    
    func testExample2() {
        let solution = Solution51().solveNQueens(1)
        assert(solution.sorted(by: { $0.description < $1.description }) == [["Q"]].sorted(by: { $0.description < $1.description }), "Expected [['Q']], got \(solution)")
    }
    
    func testExample3() {
        let solution = Solution51().solveNQueens(2)
        assert(solution == [], "Expected [], got \(solution)")
    }
}
