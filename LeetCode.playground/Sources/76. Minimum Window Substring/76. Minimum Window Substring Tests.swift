import Foundation

public class Solution76Tests {
    public init() {
        testExample1()
        testExample2()
        testExample3()
    }

    func testExample1() {
        let solution = Solution76().minimumWindowSubstring(s: "ADOBECODEBANC", t: "ABC")
        assert(solution == "BANC", "Expected 'BANC', got \(solution)")
    }
    
    func testExample2() {
        let solution = Solution76().minimumWindowSubstring(s: "a", t: "a")
        assert(solution == "a", "Expected 'a', got \(solution)")
    }
    
    func testExample3() {
        let solution = Solution76().minimumWindowSubstring(s: "a", t: "aa")
        assert(solution == "", "Expected '', got \(solution)")
    }
}
