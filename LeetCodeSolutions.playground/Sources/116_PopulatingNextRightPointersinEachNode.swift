// 116. Populating Next Right Pointers in Each Node


 // Definition for a Node.
final class Node {
    var val: Int
    var left: Node?
    var right: Node?
    var next: Node?
    init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
        self.next = nil
    }
}

final class Solution116 {
    func connect(_ root: Node?) -> Node? {
        root?.next = nil
        populateNode(root)
        return root

    }

    private func populateNode(_ root: Node?) {
        if root?.left == nil && root?.right == nil { return }
        root?.left?.next = root?.right
        root?.right?.next = root?.next?.left
        populateNode(root?.right)
        populateNode(root?.left)

    }
}
