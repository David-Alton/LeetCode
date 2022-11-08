import Foundation

public class Solution79Tests {
    public init() {
        testExample1()
        testExample2()
        testExample3()
        testOneCharacter()
        testTwoCharacters()
    }

    func testExample1() {
        let solution = Solution79().exist([["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], "ABCCED") == true
        print(solution)
    }

    func testExample2() {
        let solution = Solution79().exist([["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], "SEE") == true
        print(solution)
    }

    func testExample3() {
        let solution = Solution79().exist([["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], "ABCB") == false
        print(solution)
    }

    func testOneCharacter() {
        let solution = Solution79().exist([["A"]], "A") == true
        print(solution)
    }

    func testTwoCharacters() {
        let solution = Solution79().exist([["A","B"]], "AB") == true
        print(solution)
    }
}
