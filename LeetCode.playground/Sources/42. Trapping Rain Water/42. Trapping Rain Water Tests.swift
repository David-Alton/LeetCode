import Foundation

public class Solution42Tests {
    public init() {
        testExample1()
        testExample2()
        testExample3()
        testExample4()
    }

    func testExample1() {
        let solution = Solution42().trapRainWater([0,1,0,2,1,0,1,3,2,1,2,1])
        assert(solution == 6, "Expected 6, got \(solution)")
    }
    
    func testExample2() {
        let solution = Solution42().trapRainWater([4,2,0,3,2,5])
        assert(solution == 9, "Expected 9, got \(solution)")
    }
    
    func testExample3() {
        let solution = Solution42().trapRainWater([0,0,1,0,0])
        assert(solution == 0, "Expected 0, got \(solution)")
    }
    
    func testExample4() {
        let solution = Solution42().trapRainWater([0,1,0,2])
        assert(solution == 1, "Expected 1, got \(solution)")
    }
}
