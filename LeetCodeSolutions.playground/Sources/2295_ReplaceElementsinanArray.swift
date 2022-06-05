// 2295. Replace Elements in an Array

final class Solution2295 {
    func arrayChange(_ nums: [Int], _ operations: [[Int]]) -> [Int] {
        var dict: [Int: Int] = [:]
        var nums = nums
        for idx in 0..<nums.count {
            dict[nums[idx]] = idx
        }
        for operation in operations {
            nums[dict[operation[0]] ?? 0] = operation[1]
            dict[operation[1]] = dict[operation[0]]
        }

        return nums
    }
}
