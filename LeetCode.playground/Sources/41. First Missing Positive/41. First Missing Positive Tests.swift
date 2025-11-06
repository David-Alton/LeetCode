import Foundation

public class Solution41Tests {
    public init() {
        testExample1()
        testExample2()
        testExample3()
    }

    func testExample1() {
        let solution = Solution41().firstMissingPositive([1,2,0])
        assert(solution == 3, "Expected 3, got \(solution)")
    }
    
    func testExample2() {
        let solution = Solution41().firstMissingPositive([3,4,-1,1])
        assert(solution == 2, "Expected 2, got \(solution)")
    }
    
    func testExample3() {
        let solution = Solution41().firstMissingPositive([7,8,9,11,12])
        assert(solution == 1, "Expected 1, got \(solution)")
    }
}
