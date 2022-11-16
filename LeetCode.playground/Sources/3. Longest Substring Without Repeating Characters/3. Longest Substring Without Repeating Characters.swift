import Foundation

//Given a string s, find the length of the longest
//substring
// without repeating characters.
//
//
//
//Example 1:
//
//Input: s = "abcabcbb"
//Output: 3
//Explanation: The answer is "abc", with the length of 3.
//Example 2:
//
//Input: s = "bbbbb"
//Output: 1
//Explanation: The answer is "b", with the length of 1.
//Example 3:
//
//Input: s = "pwwkew"
//Output: 3
//Explanation: The answer is "wke", with the length of 3.
//Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.
//
//
//Constraints:
//
//0 <= s.length <= 5 * 104
//s consists of English letters, digits, symbols and spaces.

public class Solution3 {
    public init() {}
    
    public func lengthOfLongestSubstring(_ s: String) -> Int {
        var lastRepeat = -1
        var lastIndexOfChar = [Character: Int]()
        var longestSubstringLength = 0
        for char in s.enumerated() {
            if let lastIndex = lastIndexOfChar[char.element] {
                lastRepeat = max(lastIndex, lastRepeat)
                let potentialLongest = char.offset - max(lastIndex, lastRepeat)
                longestSubstringLength = max(potentialLongest, longestSubstringLength)
            } else {
                longestSubstringLength = char.offset - lastRepeat
            }
            lastIndexOfChar[char.element] = char.offset
        }
        return longestSubstringLength
    }
}
