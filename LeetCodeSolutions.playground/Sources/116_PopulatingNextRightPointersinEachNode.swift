// 116. Populating Next Right Pointers in Each Node

/**
 * Definition for a Node.
 * public class Node {
 *     public var val: Int
 *     public var left: Node?
 *     public var right: Node?
 *       public var next: Node?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *         self.next = nil
 *     }
 * }
 */

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
