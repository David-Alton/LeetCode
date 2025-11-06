import Foundation

public class Solution87Tests {
    public init() {
        testExample1()
        testExample2()
        testExample3()
    }

    func testExample1() {
        let solution = Solution87().scrambleStrings(s1: "great", s2: "rgeat")
        assert(solution == true, "Expected 'true', got \(solution)")
    }
    
    func testExample2() {
        let solution = Solution87().scrambleStrings(s1: "abcde", s2: "caebd")
        assert(solution == false, "Expected 'false', got \(solution)")
    }
    
    func testExample3() {
        let solution = Solution87().scrambleStrings(s1: "a", s2: "a")
        assert(solution == true, "Expected 'true', got \(solution)")
    }
}
