import Foundation

//Given n non-negative integers representing an elevation map where the width of each bar is 1, compute how much water it can trap after raining.
//
// 
//
//Example 1:
//
//
//Input: height = [0,1,0,2,1,0,1,3,2,1,2,1]
//Output: 6
//Explanation: The above elevation map (black section) is represented by array [0,1,0,2,1,0,1,3,2,1,2,1]. In this case, 6 units of rain water (blue section) are being trapped.
//Example 2:
//
//Input: height = [4,2,0,3,2,5]
//Output: 9
// 
//
//Constraints:
//
//n == height.length
//1 <= n <= 2 * 104
//0 <= height[i] <= 105

public class Solution42 {
    public init() {}
    
    func trapRainWater(_ input: [Int]) -> Int {
        let max = input.max() ?? 1
        var rain = 0
        for i in 1...max {
            rain += rainAtLevel(input, level: i)
        }
        return rain
    }
    
    private func rainAtLevel(_ input: [Int], level: Int) -> Int {
        var start: Int? = nil
        var rain = 0
        for (index, height) in input.enumerated() {
            if height >= level {
                if let beginning = start {
                    rain += index - beginning - 1
                    start = index
                } else {
                    start = index
                }
            }
        }
        return rain
    }
}
