import Foundation

public class Solution986Tests {
    public init() {
        testExample()
        testExample2()
    }

    func testExample() {
        let solution = Solution986().intervalIntersection([[0,2],[5,10],[13,23],[24,25]], [[1,5],[8,12],[15,24],[25,26]]) == [[1,2],[5,5],[8,10],[15,23],[24,24],[25,25]]
        print(solution == true)
    }

    func testExample2() {
        let solution = Solution986().intervalIntersection([[1,3],[5,9]], []) == []
        print(solution == true)
    }
}
