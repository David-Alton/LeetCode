import Foundation

public class Solution528Tests {
    public init() {
        testExample()
        testOneIndex()
        testEmpty()
        testOneZero()
    }

    func testExample() {
        let solution = Solution528([1, 3])
        let index = solution.pickIndex()
        print(index == 0 || index == 1)
    }

    func testOneIndex() {
        let solution = Solution528([1])
        print(solution.pickIndex() == 0)
    }

    func testEmpty() {
        let solution = Solution528([])
        print(solution.pickIndex() == nil)
    }

    func testOneZero() {
        let solution = Solution528([1,0])
        print(solution.pickIndex() == 0)
    }
}
