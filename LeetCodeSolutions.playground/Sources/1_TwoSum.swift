// 1. Two Sum

final class Solution1 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        for idx in 0..<nums.count {
            let val = nums[idx]
            let diff = target-val
            if let diffIdx = dict[diff] {
                return [diffIdx, idx]
            }
            dict[val] = idx
        }
        return [-1, -1]
    }
}
