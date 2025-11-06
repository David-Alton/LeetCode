import Foundation
import XCTest

public class Solution32Tests {
    public init() {
        testExample1()
        testExample2()
        testExample3()
        testExample4()
        testExample5()
        testExample6()
    }

    func testExample1() {
        let solution = Solution32().longestValidParentheses("(()")
        assert(solution == 2, "Expected 2, got \(solution)")
    }
    
    func testExample2() {
        let solution = Solution32().longestValidParentheses(")()())")
        assert(solution == 4, "Expected 4, got \(solution)")
    }
    
    func testExample3() {
        let solution = Solution32().longestValidParentheses(")")
        assert(solution == 0, "Expected 0, got \(solution)")
    }
    
    func testExample4() {
        let solution = Solution32().longestValidParentheses("")
        assert(solution == 0, "Expected 0, got \(solution)")
    }
    
    func testExample5() {
        let solution = Solution32().longestValidParentheses("(())")
        assert(solution == 4, "Expected 4, got \(solution)")
    }
    
    func testExample6() {
        let solution = Solution32().longestValidParentheses("())()")
        assert(solution == 2, "Expected 2, got \(solution)")
    }
}
