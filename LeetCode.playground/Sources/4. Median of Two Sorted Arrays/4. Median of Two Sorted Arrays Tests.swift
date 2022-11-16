import Foundation

public class Solution4Tests {
    public init() {
        testExample1()
        testExample2()
        testEmpty()
    }

    func testExample1() {
        let solution = Solution4().findMedianSortedArrays([1,3], [2])
        print(solution == 2)
    }

    func testExample2() {
        let solution = Solution4().findMedianSortedArrays([1,2], [3,4])
        print(solution == 2.5)
    }

    func testEmpty() {
        let solution = Solution4().findMedianSortedArrays([], [])
        print(solution == -1)
    }
}
