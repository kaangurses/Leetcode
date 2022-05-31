// 617. Merge Two Binary Trees

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */

final class Solution617 {
    func mergeTrees(_ root1: TreeNode?, _ root2: TreeNode?) -> TreeNode? {
        if root1 == nil && root2 == nil { return nil }
        let total = (root1?.val ?? 0) + (root2?.val ?? 0)
        let newNode = TreeNode(total)
        newNode.left = mergeTrees(root1?.left, root2?.left)
        newNode.right = mergeTrees(root1?.right, root2?.right)
        return newNode
    }
}
