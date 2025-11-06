import Foundation

public class Solution60Tests {
    public init() {
        testExample1()
        testExample2()
        testExample3()
    }

    func testExample1() {
        let solution = Solution60().permutationSequence(n: 3, k: 3)
        assert(solution == "213", "Expected 213, got \(solution)")
    }
    
    func testExample2() {
        let solution = Solution60().permutationSequence(n: 4, k: 9)
        assert(solution == "2314", "Expected 2314, got \(solution)")
    }
    
    func testExample3() {
        let solution = Solution60().permutationSequence(n: 3, k: 1)
        assert(solution == "123", "Expected 123, got \(solution)")
    }
}
