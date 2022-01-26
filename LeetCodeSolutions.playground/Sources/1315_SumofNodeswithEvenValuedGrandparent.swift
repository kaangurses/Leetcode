// 1315. Sum of Nodes with Even-Valued Grandparent


class TreeNode1315 {
    var val: Int
    var left: TreeNode1315?
    var right: TreeNode1315?
    init() { self.val = 0; self.left = nil; self.right = nil; }
    init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    init(_ val: Int, _ left: TreeNode1315?, _ right: TreeNode1315?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

final class Solution1315 {
    private var total: Int = 0
    func sumEvenGrandparent(_ root: TreeNode1315?) -> Int {
        guard let root = root else { return 0 }
        helperFunc(root)
        return total
    }

    private func helperFunc(_ root: TreeNode1315?) {
        guard let root = root else { return }

        if root.val%2==0 {
            sumNewNodes(root.left?.left)
            sumNewNodes(root.left?.right)
            sumNewNodes(root.right?.left)
            sumNewNodes(root.right?.right)
        }
        helperFunc(root.left)
        helperFunc(root.right)
    }

    private func sumNewNodes(_ root: TreeNode1315?) {
        guard let root = root else { return }
        total += root.val
    }
}
