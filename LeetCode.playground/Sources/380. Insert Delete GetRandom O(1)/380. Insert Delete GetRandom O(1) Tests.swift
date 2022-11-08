import Foundation

public class Solution380Tests {
    public init() {
        testExample()
    }

    func testExample() {
        let set = RandomizedSet()

        var solution = set.insert(1)
        print(solution == true)

        solution = set.remove(2)
        print(solution == false)

        solution = set.insert(2)
        print(solution == true)

        var random = set.getRandom()
        print(random == 1 || random == 2)

        solution = set.remove(1)
        print(solution == true)

        solution = set.insert(2)
        print(solution == false)

        random = set.getRandom()
        print(random == 2)
    }
}
