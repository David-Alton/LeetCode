import Foundation

public struct Node {
    public var children: [Node]
    public var value: Int

    public init(children: [Node], value: Int) {
        self.children = children
        self.value = value
    }

    ///     1
    ///    /     \
    ///   2        3
    ///  /   \      /   \
    /// 4     5   6    7
    public static var increasingTree: Node {
        let four = Node(children: [], value: 4)
        let five = Node(children: [], value: 5)
        let six = Node(children: [], value: 6)
        let seven = Node(children: [], value: 7)

        let two = Node(children: [four, five], value: 2)
        let three = Node(children: [six, seven], value: 3)

        let one = Node(children: [two, three], value: 1)

        return one
    }
}
