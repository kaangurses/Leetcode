// 104. Maximum Depth of Binary Tree

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
final class Solution104 {
    func maxDepth(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        var leftMax = 1
        var rightMax = 1
        if let left = root.left  {
            leftMax += maxDepth(left)
        }
        if let right = root.right {
            rightMax += maxDepth(right)
        }

        return max(leftMax, rightMax)
    }
}
