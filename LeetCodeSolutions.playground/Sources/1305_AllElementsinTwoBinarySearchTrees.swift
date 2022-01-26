// 1305. All Elements in Two Binary Search Trees


class TreeNode1305 {
    var val: Int
    var left: TreeNode1305?
    var right: TreeNode1305?
    init() { self.val = 0; self.left = nil; self.right = nil; }
    init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    init(_ val: Int, _ left: TreeNode1305?, _ right: TreeNode1305?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

final class Solution1305 {
    private var allItems = [Int]()
    func getAllElements(_ root1: TreeNode1305?, _ root2: TreeNode1305?) -> [Int] {
        helperFunction(root1)
        helperFunction(root2)
        return allItems.sorted(by: <)
    }

    private func helperFunction(_ root: TreeNode1305?) {
        guard let root = root else { return }
        allItems.append(root.val)
        helperFunction(root.left)
        helperFunction(root.right)
    }
}
