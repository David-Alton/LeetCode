import Foundation

//Given two strings s and t of lengths m and n respectively, return the minimum window substring of s such that every character in t (including duplicates) is included in the window. If there is no such substring, return the empty string "".
//
//The testcases will be generated such that the answer is unique.
//
// 
//
//Example 1:
//
//Input: s = "ADOBECODEBANC", t = "ABC"
//Output: "BANC"
//Explanation: The minimum window substring "BANC" includes 'A', 'B', and 'C' from string t.
//Example 2:
//
//Input: s = "a", t = "a"
//Output: "a"
//Explanation: The entire string s is the minimum window.
//Example 3:
//
//Input: s = "a", t = "aa"
//Output: ""
//Explanation: Both 'a's from t must be included in the window.
//Since the largest window of s only has one 'a', return empty string.
// 
//
//Constraints:
//
//m == s.length
//n == t.length
//1 <= m, n <= 105
//s and t consist of uppercase and lowercase English letters.
// 
//
//Follow up: Could you find an algorithm that runs in O(m + n) time?

public class Solution76 {
    public init() {}
    
    class WindowSubstring {
        var unmatched: [Character: Int] = [:]
        var window = ""
        var isComplete: Bool {
            unmatched.values.contains(where: { $0 > 0 }) == false
        }
        var length: Int { window.count }
        
        init(t: String) {
            for char in t {
                unmatched[char, default: 0] += 1
            }
        }
        
        func match(_ char: Character) -> Bool {
            window += "\(char)"
            guard unmatched[char] != nil else { return false }
            unmatched[char, default: 0] -= 1
            return true
        }
    }
    
    func minimumWindowSubstring(s: String, t: String) -> String {
        var windowSubstrings = [WindowSubstring]()
        for char in s {
            for windowSubstring in windowSubstrings {
                _ = windowSubstring.match(char)
            }
            let newWindow = WindowSubstring(t: t)
            if newWindow.match(char) {
                windowSubstrings.append(newWindow)
            }
        }
        return windowSubstrings.filter(\.isComplete).sorted(by: { $0.length < $1.length }).first?.window ?? ""
    }
}
