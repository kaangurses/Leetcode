// 268. Missing Number

final class Solution268 {
    func missingNumber(_ nums: [Int]) -> Int {
        (0..<nums.count).reduce(nums.count) { result, idx in
            result^idx^nums[idx]
        }
    }
}
