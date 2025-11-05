import Foundation

//You are given an array of k linked-lists lists, each linked-list is sorted in ascending order.
//
//Merge all the linked-lists into one sorted linked-list and return it.
//
// 
//
//Example 1:
//
//Input: lists = [[1,4,5],[1,3,4],[2,6]]
//Output: [1,1,2,3,4,4,5,6]
//Explanation: The linked-lists are:
//[
//  1->4->5,
//  1->3->4,
//  2->6
//]
//merging them into one sorted linked list:
//1->1->2->3->4->4->5->6
//Example 2:
//
//Input: lists = []
//Output: []
//Example 3:
//
//Input: lists = [[]]
//Output: []
// 
//
//Constraints:
//
//k == lists.length
//0 <= k <= 104
//0 <= lists[i].length <= 500
//-104 <= lists[i][j] <= 104
//lists[i] is sorted in ascending order.
//The sum of lists[i].length will not exceed 104.

public class Solution23 {
    public init() {}
    
    public func mergeKSortedLists(_ lists: [[Int]]) -> [Int] {
        guard !lists.isEmpty else { return [] }
        guard lists.contains(where: { !$0.isEmpty }) else { return [] }
        guard let lowestContent = lists.compactMap({ $0.first }).min() else { return [] }
        var hasRemoved = false
        var newLists = [[Int]]()
        for list in lists {
            if list.first == lowestContent, !hasRemoved {
                var mutableList = list
                mutableList.removeFirst()
                hasRemoved = true
                newLists.append(mutableList)
            } else {
                newLists.append(list)
            }
        }
        return [lowestContent] + mergeKSortedLists(newLists)
    }
}
