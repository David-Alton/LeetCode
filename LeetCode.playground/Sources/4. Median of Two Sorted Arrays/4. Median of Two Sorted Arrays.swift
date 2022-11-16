import Foundation

//Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays.
//
//The overall run time complexity should be O(log (m+n)).
//
//
//
//Example 1:
//
//Input: nums1 = [1,3], nums2 = [2]
//Output: 2.00000
//Explanation: merged array = [1,2,3] and median is 2.
//Example 2:
//
//Input: nums1 = [1,2], nums2 = [3,4]
//Output: 2.50000
//Explanation: merged array = [1,2,3,4] and median is (2 + 3) / 2 = 2.5.
//
//
//Constraints:
//
//nums1.length == m
//nums2.length == n
//0 <= m <= 1000
//0 <= n <= 1000
//1 <= m + n <= 2000
//-106 <= nums1[i], nums2[i] <= 106

public class Solution4 {
    public init() {}
    
    public func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        guard nums1.count > 0 && nums2.count > 0 else { return -1 }
        let count = nums1.count + nums2.count
        var midPoints = [Int]()
        if count % 2 != 1 {
            midPoints.append(count/2 - 1)
        }
        midPoints.append(count/2)

        var array1 = nums1
        var array2 = nums2
        var middles = [Int]()
        var counter = 0

        while middles.count != midPoints.count {
            if let array1First = array1.first,
                array1First < (array2.first ?? Int.max) {
                let next = array1.removeFirst()
                if midPoints.contains(counter) {
                    middles.append(next)
                }
            } else if let array2First = array2.first,
                        array2First < (array1.first ?? Int.max) {
                let next = array2.removeFirst()
                if midPoints.contains(counter) {
                    middles.append(next)
                }
            }
            counter += 1
        }
        
        return Double(middles.reduce(0, +)) / Double(middles.count)
    }
}
