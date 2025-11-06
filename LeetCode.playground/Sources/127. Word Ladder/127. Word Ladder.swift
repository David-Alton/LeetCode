import Foundation

//A transformation sequence from word beginWord to word endWord using a dictionary wordList is a sequence of words beginWord -> s1 -> s2 -> ... -> sk such that:
//
//Every adjacent pair of words differs by a single letter.
//Every si for 1 <= i <= k is in wordList. Note that beginWord does not need to be in wordList.
//sk == endWord
//Given two words, beginWord and endWord, and a dictionary wordList, return the number of words in the shortest transformation sequence from beginWord to endWord, or 0 if no such sequence exists.
//
//
//Example 1:
//
//Input: beginWord = "hit", endWord = "cog", wordList = ["hot","dot","dog","lot","log","cog"]
//Output: 5
//Explanation: One shortest transformation sequence is "hit" -> "hot" -> "dot" -> "dog" -> cog", which is 5 words long.
//Example 2:
//
//Input: beginWord = "hit", endWord = "cog", wordList = ["hot","dot","dog","lot","log"]
//Output: 0
//Explanation: The endWord "cog" is not in wordList, therefore there is no valid transformation sequence.
// 
//
//Constraints:
//
//1 <= beginWord.length <= 10
//endWord.length == beginWord.length
//1 <= wordList.length <= 5000
//wordList[i].length == beginWord.length
//beginWord, endWord, and wordList[i] consist of lowercase English letters.
//beginWord != endWord
//All the words in wordList are unique.

public class Solution127 {
    public init() {}
    
    func wordLadder(beginWord: String, endWord: String, wordList: [String]) -> Int {
        let set = wordLadderSets(beginWord: beginWord, endWord: endWord, wordList: Set(wordList), currentWordStreak: [beginWord])
        return set.compactMap({ $0.count }).min() ?? 0
    }
    
    private func wordLadderSets(beginWord: String, endWord: String, wordList: Set<String>, currentWordStreak: [String] = []) -> [[String]] {
        guard beginWord != endWord else { return [currentWordStreak] }
        guard wordList.isEmpty == false else { return [] }
        var wordSets = [[String]]()
        for word in wordList {
            if word.isOneLetterOff(beginWord) {
                var remainingWords = wordList
                _ = remainingWords.remove(word)
                for wordSet in wordLadderSets(beginWord: word, endWord: endWord, wordList: remainingWords, currentWordStreak: currentWordStreak + [word]) {
                    wordSets.append(wordSet)
                }
            }
        }
        return wordSets
    }
}

extension String {
    func isOneLetterOff(_ other: String) -> Bool {
        var diffCount = 0
        for i in 0..<self.count {
            if self.character(i) != other.character(i) {
                if diffCount == 0 {
                    diffCount += 1
                } else {
                    return false
                }
            }
        }
        return diffCount == 1
    }
    
    func character(_ i: Int) -> String {
        substring(from: index(startIndex, offsetBy: i)).substring(to: index(after: startIndex))
    }
}
