import Foundation

public class Solution127Tests {
    public init() {
        testExample1()
        testExample2()
    }

    func testExample1() {
        let solution = Solution127().wordLadder(beginWord: "hit", endWord: "cog", wordList: ["hot","dot","dog","lot","log","cog"])
        assert(solution == 5, "Expected '5', got \(solution)")
    }
    
    func testExample2() {
        let solution = Solution127().wordLadder(beginWord: "hit", endWord: "cog", wordList: ["hot","dot","dog","lot","log"])
        assert(solution == 0, "Expected '0', got \(solution)")
    }
}
