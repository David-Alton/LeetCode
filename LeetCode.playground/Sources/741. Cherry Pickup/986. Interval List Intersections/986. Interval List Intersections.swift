import Foundation

//You are given two lists of closed intervals, firstList and secondList, where firstList[i] = [starti, endi] and secondList[j] = [startj, endj]. Each list of intervals is pairwise disjoint and in sorted order.
//
//Return the intersection of these two interval lists.
//
//A closed interval [a, b] (with a <= b) denotes the set of real numbers x with a <= x <= b.
//
//The intersection of two closed intervals is a set of real numbers that are either empty or represented as a closed interval. For example, the intersection of [1, 3] and [2, 4] is [2, 3].
//
//
//
//Example 1:
//
//
//Input: firstList = [[0,2],[5,10],[13,23],[24,25]], secondList = [[1,5],[8,12],[15,24],[25,26]]
//Output: [[1,2],[5,5],[8,10],[15,23],[24,24],[25,25]]
//Example 2:
//
//Input: firstList = [[1,3],[5,9]], secondList = []
//Output: []
//
//
//Constraints:
//
//0 <= firstList.length, secondList.length <= 1000
//firstList.length + secondList.length >= 1
//0 <= starti < endi <= 109
//endi < starti+1
//0 <= startj < endj <= 109
//endj < startj+1

public class Solution986 {
    public init() {}

    public func intervalIntersection(_ firstList: [[Int]], _ secondList: [[Int]]) -> [[Int]] {
        var firstList = firstList
        var secondList = secondList
        var intersections = [[Int]]()

        while !firstList.isEmpty && !secondList.isEmpty {
            let firstStart = firstList.first?.first ?? Int.min
            let firstEnd = firstList.first?.last ?? Int.max
            let secondStart = secondList.first?.first ?? Int.min
            let secondEnd = secondList.first?.last ?? Int.min

            let intersecting = (firstStart <= secondStart && firstEnd >= secondStart) || (secondStart <= firstStart && secondEnd >= firstStart)
            if intersecting {
                let start = max(firstStart, secondStart)
                let end = min(firstEnd, secondEnd)
                intersections.append([start, end])
                if firstEnd <= end {
                    firstList.removeFirst()
                } else {
                    firstList[0][0] = end
                }
                if secondEnd <= end {
                    secondList.removeFirst()
                } else {
                    secondList[0][0] = end
                }
            } else {
                if firstStart < secondStart {
                    firstList.removeFirst()
                } else {
                    secondList.removeFirst()
                }
            }
        }

        return intersections
    }
}
