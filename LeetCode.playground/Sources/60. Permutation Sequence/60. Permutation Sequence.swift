import Foundation

//The set [1, 2, 3, ..., n] contains a total of n! unique permutations.
//
//By listing and labeling all of the permutations in order, we get the following sequence for n = 3:
//
//"123"
//"132"
//"213"
//"231"
//"312"
//"321"
//Given n and k, return the kth permutation sequence.
//
// 
//
//Example 1:
//
//Input: n = 3, k = 3
//Output: "213"
//Example 2:
//
//Input: n = 4, k = 9
//Output: "2314"
//Example 3:
//
//Input: n = 3, k = 1
//Output: "123"
// 
//
//Constraints:
//
//1 <= n <= 9
//1 <= k <= n!

public class Solution60 {
    public init() {}
    
    func permutationSequence(n: Int, k: Int) -> String {
        var nArray = [Int]()
        for i in 1...n {
            nArray.append(i)
        }
        let allPermutations = self.allPermutations(nArray)
        guard allPermutations.indices.contains(k - 1) else { return "" }
        let kPermutation = allPermutations[k - 1]
        var kPermutationString = ""
        for value in kPermutation {
            kPermutationString.append("\(value)")
        }
        return kPermutationString
    }
    
    private func allPermutations(_ nArray: [Int]) -> [[Int]] {
        guard !nArray.isEmpty else { return [] }
        var permutations = [[Int]]()
        for (index, value) in nArray.enumerated() {
            var remainingValues = nArray
            remainingValues.remove(at: index)
            let allPermutations = self.allPermutations(remainingValues)
            if allPermutations.isEmpty {
                permutations.append([value])
            } else {
                for permutation in allPermutations {
                    permutations.append([value] + permutation)
                }
            }
        }
        return permutations
    }
}
