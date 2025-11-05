import Foundation
import XCTest

public class Solution30Tests {
    public init() {
        testExample1()
        testExample2()
        testExample3()
        testExample4()
        testExample5()
        testExample6()
        testExample7()
        testExample8()
    }

    func testExample1() {
        let solution = Solution30().indicesOfSubstrings("abcdef", substrings: ["ab", "cd", "ef"])
        assert(solution == [0], "Expected [0], got \(solution)")
    }

    func testExample2() {
        let solution = Solution30().indicesOfSubstrings("barfoothefoobarman", substrings: ["foo","bar"])
        assert(solution == [0,9], "Expected [0,9], got \(solution)")
    }

    func testExample3() {
        let solution = Solution30().indicesOfSubstrings("barfoothefoobarman", substrings: ["fool","bars"])
        assert(solution == [], "Expected [], got \(solution)")
    }
    
    func testExample4() {
        let solution = Solution30().indicesOfSubstrings("bar", substrings: ["fool","bars"])
        assert(solution == [], "Expected [], got \(solution)")
    }
    
    func testExample5() {
        let solution = Solution30().indicesOfSubstrings("", substrings: ["fool","bars"])
        assert(solution == [], "Expected [], got \(solution)")
    }
    
    func testExample6() {
        let solution = Solution30().indicesOfSubstrings("foobar", substrings: [""])
        assert(solution == [], "Expected [], got \(solution)")
    }
    
    func testExample7() {
        let solution = Solution30().indicesOfSubstrings("foobar", substrings: [])
        assert(solution == [], "Expected [], got \(solution)")
    }
    
    func testExample8() {
        let solution = Solution30().indicesOfSubstrings("ababab", substrings: ["ab", "ab", "ab"])
        assert(solution == [0], "Expected [0], got \(solution)")
    }
}
