// 102. Binary Tree Level Order Traversal

final class Solution102 {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else { return [] }
        var queue: [TreeNode] = [root]
        var result: [[Int]] = []

        while !queue.isEmpty {
            var level = [Int]()
            let levelCount = queue.count
            for _ in 0..<levelCount {
                let node = queue.removeFirst()
                level.append(node.val)
                if let left = node.left {
                    queue.append(left)
                }
                if let right = node.right {
                    queue.append(right)
                }
            }
            result.append(level)
        }

        return result
    }
}
