// 108. Convert Sorted Array to Binary Search Tree
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
final class Solution108 {
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        if nums.isEmpty {
            return nil
        } else if nums.count == 1 {
            return TreeNode(nums[0])
        }

        let half = nums.count/2
        let root = TreeNode(nums[half])
        root.left = sortedArrayToBST(Array(nums[0..<half]))
        root.right = sortedArrayToBST(Array(nums[half+1..<nums.count]))
        return root
    }
}
