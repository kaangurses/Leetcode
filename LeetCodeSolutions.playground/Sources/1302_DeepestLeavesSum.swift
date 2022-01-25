// 1302. Deepest Leaves Sum

class TreeNode1302 {
    var val: Int
    var left: TreeNode1302?
    var right: TreeNode1302?
    init() { self.val = 0; self.left = nil; self.right = nil; }
    init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    init(_ val: Int, _ left: TreeNode1302?, _ right: TreeNode1302?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

final class Solution1302 {
    var deepest = 0
    var total = 0
    func deepestLeavesSum(_ root: TreeNode1302?) -> Int {
        deepestLeavesSum(root, level: 0)
        return total
    }

    private func deepestLeavesSum(_ root: TreeNode1302?, level: Int) {
        guard let root = root else { return }
        if root.left == nil && root.right == nil {
            if deepest == level {
                total += root.val
            } else if deepest < level {
                total = root.val
                deepest = level
            }
        } else {
            deepestLeavesSum(root.left, level: level+1)
            deepestLeavesSum(root.right, level: level+1)
        }
    }
}
