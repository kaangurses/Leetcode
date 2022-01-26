// 1038. Binary Search Tree to Greater Sum Tree

class TreeNode1038 {
    var val: Int
    var left: TreeNode1038?
    var right: TreeNode1038?
    init() { self.val = 0; self.left = nil; self.right = nil; }
    init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    init(_ val: Int, _ left: TreeNode1038?, _ right: TreeNode1038?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

final class Solution1038 {
    private var total = 0
    func bstToGst(_ root: TreeNode1038?) -> TreeNode1038? {
        helperFunc(root)
        return root
    }

    private func helperFunc(_ root: TreeNode1038?) {
        guard let root = root else { return }
        helperFunc(root.right)
        total += root.val
        root.val = total
        helperFunc(root.left)
    }
}
