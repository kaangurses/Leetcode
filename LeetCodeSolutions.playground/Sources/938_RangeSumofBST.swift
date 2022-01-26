// 938. Range Sum of BST

class TreeNode938 {
    var val: Int
    var left: TreeNode938?
    var right: TreeNode938?
    init() { self.val = 0; self.left = nil; self.right = nil; }
    init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    init(_ val: Int, _ left: TreeNode938?, _ right: TreeNode938?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

final class Solution938 {
    var total = 0
    func rangeSumBST(_ root: TreeNode938?, _ low: Int, _ high: Int) -> Int {
        guard let root = root else { return 0 }
        helperFunc(root, low, high)
        return total
    }

    private func helperFunc(_ root: TreeNode938?, _ low: Int, _ high: Int) {
        guard let root = root else { return }
        if root.val>=low && root.val<=high {
            total += root.val
        }
        helperFunc(root.left, low, high)
        helperFunc(root.right, low, high)
    }
}
