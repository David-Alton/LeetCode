import Foundation

public class Solution3Tests {
    public init() {
        testExample1()
        testExample2()
        testExample3()
        testEmpty()
    }

    func testExample1() {
        let solution = Solution3().lengthOfLongestSubstring("abcabcbb")
        print(solution == 3)
    }

    func testExample2() {
        let solution = Solution3().lengthOfLongestSubstring("bbbbb")
        print(solution == 1)
    }

    func testExample3() {
        let solution = Solution3().lengthOfLongestSubstring("pwwkew")
        print(solution == 3)
    }

    func testEmpty() {
        let solution = Solution3().lengthOfLongestSubstring("")
        print(solution == 0)
    }
}
