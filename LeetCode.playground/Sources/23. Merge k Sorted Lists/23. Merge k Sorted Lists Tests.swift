import Foundation
import XCTest

public class Solution23Tests {
    public init() {
        testExample1()
        testExample2()
        testExample3()
        testExample4()
        testExample5()
    }

    func testExample1() {
        let solution = Solution23().mergeKSortedLists([[1,3], [2]])
        assert(solution == [1,2,3], "Expected [1,2,3], got \(solution)")
    }

    func testExample2() {
        let solution = Solution23().mergeKSortedLists([])
        assert(solution == [], "Expected [], got \(solution)")
    }

    func testExample3() {
        let solution = Solution23().mergeKSortedLists([[], []])
        assert(solution == [], "Expected [], got \(solution)")
    }
    
    func testExample4() {
        let solution = Solution23().mergeKSortedLists([[1,3], [2,4]])
        assert(solution == [1,2,3,4], "Expected [1,2,3,4], got \(solution)")
    }
    
    func testExample5() {
        let solution = Solution23().mergeKSortedLists([[1,1], [1,1]])
        assert(solution == [1,1,1,1], "Expected [1,1,1,1], got \(solution)")
    }
}
