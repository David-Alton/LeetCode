import Foundation

//Given a string containing just the characters '(' and ')', return the length of the longest valid (well-formed) parentheses substring.
//
//Example 1:
//
//Input: s = "(()"
//Output: 2
//Explanation: The longest valid parentheses substring is "()".
//Example 2:
//
//Input: s = ")()())"
//Output: 4
//Explanation: The longest valid parentheses substring is "()()".
//Example 3:
//
//Input: s = ""
//Output: 0
//
//Constraints:
//
//0 <= s.length <= 3 * 104
//s[i] is '(', or ')'.

public class Solution32 {
    public init() {}
    
    func longestValidParentheses(_ input: String, openParenthesis: Int = 0, closedParenthesis: Int = 0) -> Int {
        guard input != "" else { return closedParenthesis }
        var remainingInput = input
        let firstChar = remainingInput.removeFirst()
        var longestParentheses = 0
        if firstChar == "(" {
            longestParentheses = max(longestValidParentheses(remainingInput, openParenthesis: openParenthesis + 1, closedParenthesis: closedParenthesis), longestParentheses)
        } else if openParenthesis > 0 {
            longestParentheses = max(longestValidParentheses(remainingInput, openParenthesis: openParenthesis - 1, closedParenthesis: closedParenthesis + 2), longestParentheses)
        } else {
            longestParentheses = max(closedParenthesis, longestValidParentheses(remainingInput))
        }
        return longestParentheses
    }
}
